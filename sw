const CACHE_NAME = 'parsa-studio-v1';
const ASSETS = [
  '/',
  '/index.html',
  // تمام assets حیاتی (CSS داخل index.html است، پس نیازی به فایل جدا نیست)
  // اما اگر فایل‌های تصویری یا فونت جداگانه داشته باشی، اینجا اضافه کن
];

self.addEventListener('install', function(e) {
  e.waitUntil(
    caches.open(CACHE_NAME).then(function(cache) {
      return cache.addAll(ASSETS);
    })
  );
});

self.addEventListener('activate', function(e) {
  e.waitUntil(
    caches.keys().then(function(keys) {
      return Promise.all(
        keys.filter(function(key) { return key !== CACHE_NAME; })
          .map(function(key) { return caches.delete(key); })
      );
    })
  );
});

self.addEventListener('fetch', function(e) {
  e.respondWith(
    caches.match(e.request).then(function(response) {
      return response || fetch(e.request).catch(function() {
        // در صورت آفلاین بودن و عدم تطابق کش، یک صفحه‌ی ساده برمی‌گردانیم
        return new Response('شما آفلاین هستید — محتوای کش‌شده در دسترس است.', {
          status: 503,
          statusText: 'Service Unavailable'
        });
      });
    })
  );
});
