# Definition and Overview

---

## What is Moil Meeting?

**Moil Meeting** is a cutting-edge video conferencing solution powered by the **MoilApp** fisheye image processing engine (via the Moildev SDK). By utilizing a single fisheye camera, it delivers immersive panoramic and ultra-wide (360°) views, transforming standard video feeds into dynamic, encompassing meeting environments.

Unlike traditional multi-camera systems that are complex and expensive, Moil Meeting achieves full room coverage and intelligent participant tracking with a single device. This offers a streamlined, flexible, and cost-effective alternative for modern communication needs.

---

## Key Features

Moil Meeting provides a versatile suite of operational modes tailored to diverse meeting scenarios:

| Mode | Functionality |
| :--- | :--- |
| **Original Mode** | Displays the raw, uncorrected fisheye view for complete field-of-view monitoring. |
| **Discussion Mode** | Interactive layout focusing on multiple participants simultaneously. |
| **Global Mode** | Unwraps the fisheye image into a 360° panoramic strip for total room awareness. |
| **Patrol Mode** | Automates viewing by panning across the panoramic scene continuously. |
| **Presentation Mode** | Highlights specific regions of interest for focused content delivery. |
| **AI Tracking** | Intelligent algorithms that automatically detect and track active speakers. |

---

## What is Fisheye Lens Technology?

The **Fisheye Lens**, technically referred to as a Fisheye Image Sensor (FIS), is an ultra-wide-angle lens characterized by a short focal length. It intentionally produces significant optical distortion to capture an extremely wide, often hemispherical, field of view (FOV).

<div style="background-color: #fff3cd; border-left: 6px solid #ffc107; padding: 15px; color: #856404; border-radius: 4px;">
  <strong>Key Characteristic:</strong><br>
  A standard fisheye lens boasts a FOV exceeding 180 degrees, allowing it to capture nearly everything in front of the camera, albeit with barrel distortion that requires software correction.
</div>

### Technical Foundation

Based on research by *Professor Chuang-Jan Chang*, the Moil Meeting processing engine employs **multi-collimator metrology** and **cartography** principles to characterize the lens's projection. This technique maps the fisheye image onto a hemispherical coordinate system.

Any point on the 2D image plane corresponds directly to specific spatial angles relative to the camera's optical axis:
-   The image point reflects the **Zenithal distance ($\alpha$)**.
-   The sight ray reflects the **Azimuthal distance ($\beta$)**.

This mathematical model normalizes the distorted image onto a virtual sphere, allowing for accurate re-projection into rectilinear (flat) views.

![Fisheye View Angle](https://perseverance-tech-tw.github.io/video-conference-app-release/v2.0/build/html/_images/view_angle.jpg)

### Coordinate System

The system uses a spherical coordinate system defined by the optical axis (Z-axis).

**Zenithal Angle ($\alpha$)**
:   The angle measured from the vertical optical axis (Z) towards the X- and Y-axes. It represents the deviation from the center of the lens.

**Azimuthal Angle ($\beta$)**
:   The angle of rotation around the optical axis (Z). It is measured starting from the positive Y-axis ($0^\circ$) and rotating clockwise.

![Fisheye Angles](https://perseverance-tech-tw.github.io/video-conference-app-release/v2.0/build/html/_images/angle.jpg)

<div style="background-color: #fff3cd; border-left: 6px solid #ffc107; padding: 15px; color: #856404; border-radius: 4px;">
  <strong>The Power of Software Correction</strong><br>
  The sophisticated normalization and re-projection workflow described above is the core engine of Moil Meeting. It allows the software to take a distorted circular image and transform it into readable, natural-looking panoramic or zoomed views in real-time.
</div>

