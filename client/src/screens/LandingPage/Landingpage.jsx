import React from "react";
import data from "../AboutData/Data";
import { Link } from 'react-router-dom';
import aboutImg from "../img/house.jpeg";
import banner from "../img/images/bg-img.jpeg"
import './LandingPage.css'

export default function LandingPage() {
  return (
    
      <section className="landing-section-container">
        <div className="container-land">
          <div className="landing-top">
            <h2 className="layout-welcome">Welcome to Realtors-inc</h2>
            <p className='landing-ptag'>
              Lorem Ipsum has been the industry’s standard dummy text ever
              since the 1500s, when an unknown printer took a galley of
              type.
									</p>
          </div>
          <div className="at-feature">
									{data.map((item) => {
										const { id, img, title, text } = item;
										return (
											<div className="af-item" key={id}>
                        <div className="af-icon">
                          <img className="af-icon" src={img} alt="" />
												</div>
												<div className="af-text">
													<h6 className="landing-title">{title}</h6>
													<p className="landing-text">{text}</p>
												</div>
											</div>
										);
									})}
								</div>
            <div class="landing-pic set-bg">
              <Link to='/landing'>
                <img src={aboutImg} className="landing-img-bottom" />
              </Link>
            </div>         
				</div>
    </section>
	);
}