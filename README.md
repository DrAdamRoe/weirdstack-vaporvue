# weirdstack-vaporvue

A simple app to learn some things I don't know: server-side Swift (Vapor), Vue.js with Parcel, and other things I haven't heard of yet. 

The app itself - merely an excuse to try to the tech - is essentially an impoverished search engine. You can type a word into the query box, and will get a message that this word is or is not in The Words Set. If it is not in the set, the backend will add it to the set. 

As the name suggests, this is not intended to be the next great stack. I am a teacher at CODE University of Applied Sciences in Berlin, where students spend their semesters working on projects. The choices sorrounding technology are entirely theirs. At the end of the semester, I am supposed to assess their work. As far as I can tell, the choice of technology is often based on what's trending on Twitter. In order to stay young and not look like a complete fool when running an exam, I try out funny stacks every now and then. The choice of technology is purely based on me not having used these tools before, not based on what makes sense.  

## Backend: Server-Side Swift (Vapor)

Technologically, the "database" is a single JSON file, words.json. This short list of words is in the repoistory, and new words are added to it on the fly. There is no long-term persitence here, it is not a DB (think impoverished NoSQL here). There is a single API route, `/word`, which will respond with a message that either the word has been found, or it has been added to The Set. The data has been populated with the help of the appropriately named [list of random words](http://listofrandomwords.com/) site. 

I created this project using `vapor new WordsSet --template=api`. I am learning off of the [official documentation](https://docs.vapor.codes/3.0/). Swift version is 5.01, xcode is 10.2.1, Vapor 3.1.10 (I think). 

To run, merely hit play in xcode. There are of course other ways to do this. 

## Frontend: Vue.js

The frontend is a Vue.js packaged with Parcel. It is a single view with two components: a query box for user input, and a message box below it, to show server responses.

To run: `npm run dev`.

## ToDo:
- [ ] Return meaningful data, render.
- [ ] Add words list to backend
- [ ] Change design to be silly 
- [ ] Add components, play with store. 
- [ ] Add a test or two
- [ ] Dockerize backend (run swift on Linux)
- [ ] Integrate on Nuxt for server-side rendering


