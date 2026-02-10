# Operations Guide

Use this guide to run Moil Meeting day to day. Start with the Quick Start Guide, then return here as a reference.

## Application Overview

**Fisheye Video Conference System** is a video conferencing application designed with a streamlined and modern interface. Upon launch, users are immediately presented with the main dashboard for rapid access to core functionalities.

### Operational Modes

The application features several distinct operational modes, accessible via the bottom navigation bar:

- **Start Camera** — Activates video capture for all modes.
- **Original Mode** — Displays the raw, uncorrected fisheye view.
- **Discussion Mode** — Facilitates interactive, multi-participant discussions.
- **Global Mode** — Connects participants globally with panoramic views.
- **Patrol Mode** — Automated surveillance scanning.
- **Presentation Mode** — Optimized for content delivery and focus.

<img
  src="../assets/images/features/app.png"
  alt="Application Overview"
  style="width: 100%; height: auto; display: block;"
/>
*Main Interface with Mode Selection*

---

## Quick Start Guide

Welcome to **Moil Meeting**, a comprehensive solution for 360° video conferencing and surveillance. Whether hosting a remote meeting, monitoring a wide area, or delivering a presentation, this platform provides the flexibility you need.

### Initial Setup

Launch the application to access the main interface.

<img
  src="../assets/images/install/run_app_v2.0.3.png"
  alt="Start Screen"
  style="width: 100%; height: auto; display: block;"
/>

### Media Source Selection

Click the **START CAMERA** button to initiate the video feed. You will be prompted to select a source:

- **Open Camera** — Use a connected USB or built-in camera.
- **Load Media** — Play a pre-recorded video file.
- **Camera URL** — Connect to an IP camera stream.

<img
  src="../assets/images/operations/original_v2.png"
  alt="Original Mode View"
  style="width: 100%; height: auto; display: block;"
/>
*Original Mode Active*

Each source allows for detailed configuration, including resolution and frame rate adjustments.

### Switching Modes

Methods of operation can be switched dynamically. The application defaults to **Original Mode** upon initialization.

<img
  src="../assets/images/operations/disscusion_mode_v2.png"
  alt="Discussion Mode View"
  style="width: 100%; height: auto; display: block;"
/>
*Discussion Mode*

<img
  src="../assets/images/operations/patrol_mode_v2.png"
  alt="Patrol Mode View"
  style="width: 100%; height: auto; display: block;"
/>
*Patrol Mode*

<img
  src="../assets/images/operations/presentation_mode_v2.png"
  alt="Presentation Mode View"
  style="width: 100%; height: auto; display: block;"
/>
*Presentation Mode*

---

## Camera Operations

### Starting the Camera

<img
  src="../assets/images/operations/select_media.png"
  alt="Media Source Selection"
  style="width: 100%; height: auto; display: block;"
/>
*Source Selection Dialog*

**Procedure:**

1. Choose your input source in the dialog:
    
    - **Open Camera**: For physical devices.
    - **Load Media**: For file playback.
    - **Camera URL**: For network streams.

2. Click **Start Camera** to proceed.

### Camera Controls

<img
  src="../assets/images/operations/camera_control.png"
  alt="Camera Controls"
  style="width: 100%; height: auto; display: block;"
/>

*Playback Controls*

Once active, use the control bar to manage the feed:

- **Stop Camera**: Completely stops the video feed.
- **Pause Camera**: Freezes the current frame.
- **Play Camera**: Resumes the feed from a paused state.
- **Resolution**: Set the graphics quality to High for the best experience.
- **Language**: Set the application interface language.

---
## Detailed Mode Operations

### Original Mode

Displays the full **360-degree fisheye view**. This mode shows the complete, distorted image as captured by the sensor.

<img
  src="../assets/images/operations/original_v2.png"
  alt="Original Mode"
  style="width: 100%; height: auto; display: block;"
/>
*360° Fisheye View*

**Key Benefits:**

- **Total Coverage:** Eliminates blind spots by capturing the entire room.
- **Situational Awareness:** Provides full context for surveillance or large meetings.
- **Simplicity:** No need for manual pan/tilt adjustments.

### Discussion Mode

Designed for multi-participant meetings, this mode creates virtual "cameras" from the single fisheye source.

<img
  src="../assets/images/operations/disscusion_mode_v2.png"
  alt="Discussion Mode"
  style="width: 100%; height: auto; display: block;"
/>
*Discussion Mode Interface*

#### Configuration

Access settings via the **Config Button**:

<img
  src="../assets/images/operations/show_panorama.png"
  alt="Config Button"
  style="width: 100%; height: auto; display: block;"
/>

**Features:**
- **Limit Person**: Choose between 2, 3, 4, 6, or 8 participant views.
- **View List**: Manage individual views (Pause, Reorder, Configure).
- **Layout Slider**: Dynamically resize video windows.
- **Panorama**: Toggle the panoramic strip at the top.

<img
  src="../assets/images/operations/limit_person.png"
  alt="Limit Person"
  style="width: 100%; height: auto; display: block;"
/>
*Participant Limit Selection*

**Panorama Toggle:**
- **Show Panorama**: Enables a wide strip showing the entire room context.
- **Hide Panorama**: Focuses solely on individual participants.

<img
  src="../assets/images/operations/right_clicked_v2.png"
  alt="Right-Click Menu"
  style="width: 100%; height: auto; display: block;"
/>

*Right-click Context Menu*

### Global Mode

Displays a dual-panoramic strip, effectively "unwrapping" the 360° image into a flat view.

<img
  src="../assets/images/operations/global_mode.png"
  alt="Global Mode"
  style="width: 100%; height: auto; display: block;"
/>

*Global Panoramic View*

**Features:**
- **Dual Views**: View two different panoramic angles simultaneously.
- **Flip Controls**: Orientation adjustment.

### Patrol Mode

Automates monitoring by panning the virtual view across the panoramic scene.

<img
  src="../assets/images/operations/patrol_mode_v2.png"
  alt="Patrol Mode"
  style="width: 100%; height: auto; display: block;"
/>
*Patrol Mode*

**Features:**
- **Instant Activation**: Begins scanning immediately upon selection.
- **Dynamic Control**: Use the slider to manually override or adjust the view.

### Presentation Mode

Focuses on a specific area of interest, such as a whiteboard or speaker, while minimizing distortion.

<img
  src="../assets/images/operations/presentation_mode_v2.png"
  alt="Presentation Mode"
  style="width: 100%; height: auto; display: block;"
/>
*Presentation Focus*

**Usage:**
1. Select **Presentation Mode**.
2. Use **Dialog Transformation** (Right-click) to fine-tune the region of interest.
## Recording Functions

---


### Start Recording

1. Click the **Start Recording** button.
2. A confirmation message, "Recording Started," will appear.

<img
  src="../assets/images/operations/recording.png"
  alt="Recording Active"
  style="width: 100%; height: auto; display: block;"
/>

*Recording Active*

### Stop Recording

1. Click **Stop Recording**.
2. A "Recording Finished" confirmation will display the saved file path.

<img
  src="../assets/images/operations/stop_record.png"
  alt="Recording Complete"
  style="width: 100%; height: auto; display: block;"
/>

*Recording Saved*

---

## Configuration Panel

Access system-wide settings via the **Config Button**.

### Camera Information

Displays technical details about the current video source.

<img
  src="../assets/images/operations/camera_information_v2.png"
  alt="Camera Information"
  style="width: 100%; height: auto; display: block;"
/>

- **Model & Version**: Hardware and software identifiers.
- **Video Stats**: Resolution and Field of View (FOV).
- **Update Check**: Provides a download link if a new version is detected.

### View Labels

Toggle overlay labels for camera views.

<img
  src="../assets/images/operations/view_number_v2.png"
  alt="Show View Number"
  style="width: 100%; height: auto; display: block;"
/>
*Labels Visible*

<img
  src="../assets/images/operations/hide_view_number_v2.png"
  alt="Hide View Number"
  style="width: 100%; height: auto; display: block;"
/>
*Labels Hidden*

**Reset Labels:** Restores default naming and positioning.

### Advanced Controls

- **Flip Camera**: Correct orientation (Upside, Front, Downside).
- **Panorama Config**: Fine-tune the alpha/beta angles and cropping of the panoramic view.
- **Resolution**: Adjust output quality per view.
- **UI Scale**: Increase or decrease interface size for readability.
- **Cache**: Import/Export/Reset configuration cache.

![Resolution Settings](../assets/images/operations/resolution_v2.png)

---

## Advanced Interactions

### Right-Click Context Menu

Available in all modes for rapid access to view-specific tools.

![Right-Click Menu](../assets/images/operations/right_clicked_v2.0.png)

- **View Information**: Detailed stats for the specific view.
- **Save Image As**: Capture a snapshot.
- **Show Original Image**: Quickly toggle to the raw fisheye feed.
- **Pause View**: Freeze a specific quadrant.
- **Configuration View Setting**: Deep-dive into Anypoint transformation parameters.

### Anypoint Transformation

Customize how a specific view is de-warped.

![Configuration View](../assets/images/operations/configuration_v2.png)
*Transformation Settings*

**Parameters:**
- **Alpha/Beta**: Adjust the viewing angle.
- **Zoom**: Control magnification.
- **Lock AI**: Prevent auto-tracking from moving this view.

![Adjusted Transform](../assets/images/operations/camera_information_v2.png)
*Visual Adjustment Tool*

!!! note "Mouse Press Event"
    Mouse interactions significantly enhance navigation control across all modes.

---

## Mouse Controls

### Drag to Move
Click and drag within a view to shift the visible region.

![Mouse Drag](../assets/images/operations/mouse_drag.png)

### Double-Click to Expand
Double-click any view to maximize it to full screen.

![Double-Click](../assets/images/operations/double_clicked.png)

### Scroll to Zoom
Use the mouse wheel to zoom in and out.

![Scroll Zoom](../assets/images/operations/scroll_up_down.png)

!!! note "Tip"
    Use **Transformation** and **Adjusted Transform** features to precisely focus on specific objects while referencing the original image for context.

---

*For further assistance, please contact the Moil Meeting support team.*
