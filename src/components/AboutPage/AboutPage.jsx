import React from 'react';
import './AboutPage.css';

// The About Page shows info about Vetelligence for all users whether logged in or not.
function AboutPage() {
  return (
    <div className="aboutContainer">
      <div>
        <img src="/images/Vetelligence-02.svg" className="aboutImg"/>
        <h3>About Us</h3>
        <p>Our Founder, Zachary, served in the United States Army infantry, which included a deployment to Afghanistan. Upon exiting the military, he experienced a challenging and frustrating job application process to enter the workforce. After filling out over 350 applications and facing the same inefficient and ineffective process over and over for months at a time, the idea of what would become Vetelligence was born.</p>
        <p>Our AI/ML platform is engineered to remove barriers, create opportunities and forge relationships. Unfortunately, many AI companies have benefited from the perception that they’ve built sophisticated automation and A.I., rather than a system that relies on manual labor. The landscape for sourcing top talent has evolved to which we are equipped to assist employers with the data backed hiring. You don’t need to be a recruiting expert to reimagine the hiring process - just someone who cares about who is coming in the door.</p>
        <p>Products and services can be complex - hiring new personnel doesn’t need to be. Simply put - we vet the vets so you can focus on your business.</p>
        <div className="mission">
          <p className="missionText">Mission</p>
          <p className="missionText">We believe that veterans should be granted the opportunity to fairly compete for employment in the civilian workforce. Relationships need to be nourished with employers and recruiters to maintain a steady pipeline. We believe our cause to be noble and for the greater good of the United States of America.</p>
        </div>
        <div className="founderInfo">
          <span className="leftSpan">
            <img src="./images/Zach.png" height="200px" width="150px"/>
          </span>
          <span className="rightSpan">
            <p>Zachary Oshinbanjo</p>
            <br></br>
            <p>(CEO & Founder)</p>
          </span>
        </div>
      </div>
    </div>
  );
}

export default AboutPage;