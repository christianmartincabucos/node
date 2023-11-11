FROM node

# for travis CI BECAUSE in travis wwe dont have this fiel/folder
RUN mkdir /usr/src/app 
WORKDIR /usr/src/app

#COPY FOR TRAVIS
ENV PATH /usr/src/app/node_modules/.bin:$PATH
COPY package*.json ./

RUN npm install

# copy to our folder that we created like the [mkdir /usr/src/app]
COPY . /usr/src/app

EXPOSE 4000
CMD [ "npm", "start" ]
