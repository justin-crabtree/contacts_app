<template>
  <div class="home">
    <h1>New Contact</h1>
    <div>
      First Name:
      <input type="text" v-model="newFirstName" />
      Last Name:
      <input type="text" v-model="newLastName" />
      Phone Number:
      <input type="text" v-model="newPhoneNumber" />
      Email:
      <input type="text" v-model="newEmail" />
      <button v-on:click="createContact()">Create Contact</button>
    </div>
    <h1>All Contacts</h1>
    <div v-for="contact in contacts">
      <h2>{{ contact.full_name }}</h2>
      <div>
        <button v-on:click="showMoreInfo()">Show More Info</button>
        <h2>{{ contact.phone_number }}</h2>
        <h2>{{ contact.email }}</h2>
      </div>
    </div>
  </div>
</template>

<style></style>

<script>
import axios from "axios";

export default {
  data: function() {
    return {
      contacts: [],
      newFirstName: "",
      newLastName: "",
      newPhoneNumber: "",
      newEmail: ""
    };
  },
  created: function() {
    axios.get("/api/contacts").then(response => {
      this.contacts = response.data;
    });
  },
  methods: {
    createContact: function() {
      var params = {
        first_name: this.newFirstName,
        last_name: this.newLastName,
        phone_number: this.newPhoneNumber,
        email: this.newEmail
      };
      axios.post("/api/contacts", params).then(response => {
        this.contacts.push(response.data);
        this.newFirstName = "";
        this.newLastName = "";
        this.newPhoneNumber = "";
        this.newEmail = "";
      });
    }
  }
};
</script>
