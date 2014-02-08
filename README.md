# Recent Tweets 2

## Learning Competencies

* Incorporate third-party gems into a web application using bundler
* Extend the Sinatra application environment with a ruby gem
* Use AJAX and “long-polling” in a browser to wait for a specific condition on the web application server
* Use a third-party API
* Implement OAuth

## Summary

We're going to build on Recent Tweets 1 to learn how front-end and back-end can
act together to provide a superior user experience.

Right now we have a page which loads the 10 most recent tweets.  If our cache
is stale the page can take a long time to load.  If our cache is fresh it loads
almost instantaneously.

There's only so much we can do to improve the raw load time as long as a user
request might result in an API call.  The 1-2 seconds spent making the API are
going to be taken up somewhere, regardless.

What's the real user experience problem with a request that takes a long time?
Anxiety and frustration User become anxious and start asking questions like "Is
this site working" or "Is my browser broken?"  This uncertainty and
disequilibrium quickly leads to frustration:"This site is broken!",  "This site
is wasting my time!", etc.

Let's solve that problem.


## Releases

### Release 0: AJAX For A Better UX

We're going to create a version such that when a user lands on the "show
tweets" page, the page always loads immediately.

If the cache is fresh, just load the page as normal.  If the cache is stale,
however, load a page which does the following:

1. Displays a please wait message, maybe using a [spinner gif][].
2. Upon loading, fires off an AJAX request which refreshes the cache (this will
   require a new URL).
3. That AJAX call should return HTML which contains the list of tweets to be
   rendered, after populating the cache.  Re-use your [view partials][]; don't
  duplicate the HTML in two views.
4. Replace the "please wait" message with the list of tweets as it would be
   displayed were the cache fresh

Using JSON in this instance is overkill.

### Release 1: New Endpoints

Add new page of your own choosing.  It could be something entirely custom that
makes multiple API requests or it could be something as simple as displaying a
list of followers.

Re-use the caching infrastructure and AJAX technique above to make it quick
where possible and graceful where it's not possible to be quick.

<!-- ## Optimize Your Learning -->

## Resources

* [Spinner gif][spinner gif]
* [Sinatra view partials][view partials]

[spinner gif]: http://www.ajaxload.info/
[view partials]: http://www.sinatrarb.com/faq.html#partials
