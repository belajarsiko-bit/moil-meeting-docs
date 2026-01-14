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

![Application Overview](https://perseverance-tech-tw.github.io/video-conference-app-release/v2.0/build/html/_images/overview.png)
*Main Interface with Mode Selection*

---

## Quick Start Guide

Welcome to **Moil Meeting**, a comprehensive solution for 360° video conferencing and surveillance. Whether hosting a remote meeting, monitoring a wide area, or delivering a presentation, this platform provides the flexibility you need.

### Initial Setup

Launch the application to access the main interface.

![Start Screen](https://perseverance-tech-tw.github.io/video-conference-app-release/v2.0/build/html/_images/start.png)

### Media Source Selection

Click the **START CAMERA** button to initiate the video feed. You will be prompted to select a source:

- **Open Camera** — Use a connected USB or built-in camera.
- **Load Media** — Play a pre-recorded video file.
- **Camera URL** — Connect to an IP camera stream.

![Original Mode View](https://perseverance-tech-tw.github.io/video-conference-app-release/v2.0/build/html/_images/original_mode_view.png)
*Original Mode Active*

Each source allows for detailed configuration, including resolution and frame rate adjustments.

### Switching Modes

Methods of operation can be switched dynamically. The application defaults to **Original Mode** upon initialization.

![Discussion Mode View](https://perseverance-tech-tw.github.io/video-conference-app-release/v2.0/build/html/_images/disscusion_mode_view.png)
*Discussion Mode*

![Patrol Mode View](https://perseverance-tech-tw.github.io/video-conference-app-release/v2.0/build/html/_images/patrol_mode_view.png)
*Patrol Mode*

![Presentation Mode View](https://perseverance-tech-tw.github.io/video-conference-app-release/v2.0/build/html/_images/presentation_mode_view.png)
*Presentation Mode*

---

## Camera Operations

### Starting the Camera

![Media Source Selection](https://perseverance-tech-tw.github.io/video-conference-app-release/v2.0/build/html/_images/select_media_source_v2.png)
*Source Selection Dialog*

**Procedure:**

1. Click **START CAMERA** at the bottom of the interface.
2. Choose your input source in the dialog:
   - **Open Camera**: For physical devices.
   - **Load Media**: For file playback.
   - **Camera URL**: For network streams.
   - **Token**: For authenticated streams.
3. Click **OK** to proceed.

### Camera Controls

![Camera Controls](https://perseverance-tech-tw.github.io/video-conference-app-release/v2.0/build/html/_images/stop_play.png)
*Playback Controls*

Once active, use the control bar to manage the feed:

- **Stop Camera**: Completely stops the video feed.
- **Pause Camera**: Freezes the current frame.
- **Play Camera**: Resumes the feed from a paused state.

---

## Recording Functions

### Start Recording

1. Click the **Start Recording** button.
2. A confirmation message, "Recording Started," will appear.

![Recording Active](https://perseverance-tech-tw.github.io/video-conference-app-release/v2.0/build/html/_images/recording.png)
*Recording Active*

### Stop Recording

1. Click **Stop Recording**.
2. A "Recording Finished" confirmation will display the saved file path.

![Recording Complete](https://perseverance-tech-tw.github.io/video-conference-app-release/v2.0/build/html/_images/stop_record.png)
*Recording Saved*

---

## Detailed Mode Operations

### Original Mode

Displays the full **360-degree fisheye view**. This mode shows the complete, distorted image as captured by the sensor.

![Original Mode](https://perseverance-tech-tw.github.io/video-conference-app-release/v2.0/build/html/_images/original.png)
*360° Fisheye View*

**Key Benefits:**

- **Total Coverage:** Eliminates blind spots by capturing the entire room.
- **Situational Awareness:** Provides full context for surveillance or large meetings.
- **Simplicity:** No need for manual pan/tilt adjustments.

### Discussion Mode

Designed for multi-participant meetings, this mode creates virtual "cameras" from the single fisheye source.

![Discussion Mode](https://perseverance-tech-tw.github.io/video-conference-app-release/v2.0/build/html/_images/disscusion_newversion.png)
*Discussion Mode Interface*

#### Configuration

Access settings via the **Config Button**:

![Config Button](https://perseverance-tech-tw.github.io/video-conference-app-release/v2.0/build/html/_images/config_v2.png)

**Features:**
- **Limit Person**: Choose between 2, 3, 4, 6, or 8 participant views.
- **View List**: Manage individual views (Pause, Reorder, Configure).
- **Layout Slider**: Dynamically resize video windows.
- **Panorama**: Toggle the panoramic strip at the top.

![Limit Person](https://perseverance-tech-tw.github.io/video-conference-app-release/v2.0/build/html/_images/limit_person.png)
*Participant Limit Selection*

**Panorama Toggle:**
- **Show Panorama**: Enables a wide strip showing the entire room context.
- **Hide Panorama**: Focuses solely on individual participants.

![Right-Click Menu](https://perseverance-tech-tw.github.io/video-conference-app-release/v2.0/build/html/_images/right_clicked_v2.png)
*Right-click Context Menu*

### Global Mode

Displays a dual-panoramic strip, effectively "unwrapping" the 360° image into a flat view.

![Global Mode](https://perseverance-tech-tw.github.io/video-conference-app-release/v2.0/build/html/_images/global_mode.png)
*Global Panoramic View*

**Features:**
- **Dual Views**: View two different panoramic angles simultaneously.
- **Flip Controls**: Orientation adjustment.

### Patrol Mode

Automates monitoring by panning the virtual view across the panoramic scene.

![Patrol Mode](https://perseverance-tech-tw.github.io/video-conference-app-release/v2.0/build/html/_images/patrol_mode_v2.png)
*Patrol Mode*

**Features:**
- **Instant Activation**: Begins scanning immediately upon selection.
- **Dynamic Control**: Use the slider to manually override or adjust the view.

### Presentation Mode

Focuses on a specific area of interest, such as a whiteboard or speaker, while minimizing distortion.

![Presentation Mode](https://perseverance-tech-tw.github.io/video-conference-app-release/v2.0/build/html/_images/presentation_mode_v2.png)
*Presentation Focus*

**Usage:**
1. Select **Presentation Mode**.
2. Use **Dialog Transformation** (Right-click) to fine-tune the region of interest.

---

## Configuration Panel

Access system-wide settings via the **Config Button**.

### Camera Information

Displays technical details about the current video source.

![Camera Information](https://perseverance-tech-tw.github.io/video-conference-app-release/v2.0/build/html/_images/camera_information_v2.png)

- **Model & Version**: Hardware and software identifiers.
- **Video Stats**: Resolution and Field of View (FOV).
- **Update Check**: Provides a download link if a new version is detected.

### View Labels

Toggle overlay labels for camera views.

![Show View Number](https://perseverance-tech-tw.github.io/video-conference-app-release/v2.0/build/html/_images/view_number_v2.png)
*Labels Visible*

![Hide View Number](https://perseverance-tech-tw.github.io/video-conference-app-release/v2.0/build/html/_images/hide_view_number_v2.png)
*Labels Hidden*

**Reset Labels:** Restores default naming and positioning.

### Advanced Controls

- **Flip Camera**: Correct orientation (Upside, Front, Downside).
- **Panorama Config**: Fine-tune the alpha/beta angles and cropping of the panoramic view.
- **Resolution**: Adjust output quality per view.
- **UI Scale**: Increase or decrease interface size for readability.
- **Cache**: Import/Export/Reset configuration cache.

![Resolution Settings](https://perseverance-tech-tw.github.io/video-conference-app-release/v2.0/build/html/_images/resolution_v2.png)

---

## Advanced Interactions

### Right-Click Context Menu

Available in all modes for rapid access to view-specific tools.

![Right-Click Menu](https://perseverance-tech-tw.github.io/video-conference-app-release/v2.0/build/html/_images/right_clicked_v2.png)

- **View Information**: Detailed stats for the specific view.
- **Save Image As**: Capture a snapshot.
- **Show Original Image**: Quickly toggle to the raw fisheye feed.
- **Pause View**: Freeze a specific quadrant.
- **Configuration View Setting**: Deep-dive into Anypoint transformation parameters.

### Anypoint Transformation

Customize how a specific view is de-warped.

![Configuration View](https://perseverance-tech-tw.github.io/video-conference-app-release/v2.0/build/html/_images/configuration_v2.png)
*Transformation Settings*

**Parameters:**
- **Alpha/Beta**: Adjust the viewing angle.
- **Zoom**: Control magnification.
- **Lock AI**: Prevent auto-tracking from moving this view.

![Adjusted Transform](https://perseverance-tech-tw.github.io/video-conference-app-release/v2.0/build/html/_images/adjust_transform_v2.png)
*Visual Adjustment Tool*

<div style="background-color: #fff3cd; border-left: 6px solid #ffc107; padding: 15px; color: #856404; border-radius: 4px;">
  <strong>Note: Mouse Press Event</strong><br>
  Mouse interactions significantly enhance navigation control across all modes.
</div>

---

## Mouse Controls

### Drag to Move
Click and drag within a view to shift the visible region.

![Mouse Drag](https://perseverance-tech-tw.github.io/video-conference-app-release/v2.0/build/html/_images/mouse_drag.png)

### Double-Click to Expand
Double-click any view to maximize it to full screen.

![Double-Click](https://perseverance-tech-tw.github.io/video-conference-app-release/v2.0/build/html/_images/double_clicked.png)

### Scroll to Zoom
Use the mouse wheel to zoom in and out.

![Scroll Zoom](https://perseverance-tech-tw.github.io/video-conference-app-release/v2.0/build/html/_images/scroll_up_down.png)

<div style="background-color: #fff3cd; border-left: 6px solid #ffc107; padding: 15px; color: #856404; border-radius: 4px;">
  <strong>Tip:</strong><br>
  Use <strong>Transformation</strong> and <strong>Adjusted Transform</strong> features to precisely focus on specific objects while referencing the original image for context.
</div>

---

*For further assistance, please contact the Moil Meeting support team.*