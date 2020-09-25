.class public interface abstract Lo/MediaMetadataCompat$RatingKey;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/MenuItem;


# virtual methods
.method public abstract collapseActionView()Z
.end method

.method public abstract expandActionView()Z
.end method

.method public abstract extraCallback()Lo/IMediaControllerCallback;
.end method

.method public abstract extraCallback(Ljava/lang/CharSequence;)Lo/MediaMetadataCompat$RatingKey;
.end method

.method public abstract getActionView()Landroid/view/View;
.end method

.method public abstract getAlphabeticModifiers()I
.end method

.method public abstract getContentDescription()Ljava/lang/CharSequence;
.end method

.method public abstract getIconTintList()Landroid/content/res/ColorStateList;
.end method

.method public abstract getIconTintMode()Landroid/graphics/PorterDuff$Mode;
.end method

.method public abstract getNumericModifiers()I
.end method

.method public abstract getTooltipText()Ljava/lang/CharSequence;
.end method

.method public abstract isActionViewExpanded()Z
.end method

.method public abstract onMessageChannelReady(Ljava/lang/CharSequence;)Lo/MediaMetadataCompat$RatingKey;
.end method

.method public abstract onPostMessage(Lo/IMediaControllerCallback;)Lo/MediaMetadataCompat$RatingKey;
.end method

.method public abstract setActionView(I)Landroid/view/MenuItem;
.end method

.method public abstract setActionView(Landroid/view/View;)Landroid/view/MenuItem;
.end method

.method public abstract setAlphabeticShortcut(CI)Landroid/view/MenuItem;
.end method

.method public abstract setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;
.end method

.method public abstract setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;
.end method

.method public abstract setNumericShortcut(CI)Landroid/view/MenuItem;
.end method

.method public abstract setShortcut(CCII)Landroid/view/MenuItem;
.end method

.method public abstract setShowAsAction(I)V
.end method

.method public abstract setShowAsActionFlags(I)Landroid/view/MenuItem;
.end method
