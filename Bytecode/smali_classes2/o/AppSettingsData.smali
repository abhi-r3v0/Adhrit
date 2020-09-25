.class public final Lo/AppSettingsData;
.super Landroid/app/Fragment;
.source ""

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/AppSettingsData$ICustomTabsCallback;
    }
.end annotation


# instance fields
.field ICustomTabsCallback:Lo/Settings;

.field ICustomTabsCallback$Stub:Landroid/view/View;

.field private asBinder:Landroid/os/Handler;

.field private asInterface:Ljava/util/concurrent/atomic/AtomicBoolean;

.field extraCallback:Lo/SettingsSpiCall$onPostMessage$onPostMessage;

.field onMessageChannelReady:Landroid/app/Activity;

.field onNavigationEvent:I

.field onPostMessage:Landroid/view/GestureDetector;

.field private onRelationshipValidationResult:Ljava/lang/Runnable;

.field private onTransact:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 302
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lo/AppSettingsData;->asInterface:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private static synthetic ICustomTabsCallback(Lo/AppSettingsData;)V
    .locals 4

    .line 6266
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x11

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lo/AppSettingsData;->onMessageChannelReady:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6267
    :goto_0
    iget-object v2, p0, Lo/AppSettingsData;->onMessageChannelReady:Landroid/app/Activity;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/AppSettingsData;->asInterface:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6268
    iget-object v0, p0, Lo/AppSettingsData;->asBinder:Landroid/os/Handler;

    iget-object v2, p0, Lo/AppSettingsData;->onTransact:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6269
    iget-object v0, p0, Lo/AppSettingsData;->asBinder:Landroid/os/Handler;

    iget-object v2, p0, Lo/AppSettingsData;->onRelationshipValidationResult:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6271
    iget-object v0, p0, Lo/AppSettingsData;->onMessageChannelReady:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 6275
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 6277
    :try_start_0
    sget v3, Lo/writeCachedSettings$extraCallback;->com_mixpanel_android_slide_down:I

    invoke-virtual {v2, v1, v3}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 6279
    :catch_0
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    sget v2, Lo/writeCachedSettings$extraCallback;->com_mixpanel_android_slide_down:I

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 6281
    :goto_1
    iget v0, p0, Lo/AppSettingsData;->onNavigationEvent:I

    invoke-static {v0}, Lo/SettingsSpiCall;->ICustomTabsCallback(I)V

    .line 6282
    iget-object p0, p0, Lo/AppSettingsData;->asInterface:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    return-void
.end method

.method private onPostMessage()V
    .locals 2

    .line 246
    iget-object v0, p0, Lo/AppSettingsData;->asInterface:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 247
    iget-object v0, p0, Lo/AppSettingsData;->asBinder:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 248
    iget-object v1, p0, Lo/AppSettingsData;->onTransact:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 249
    iget-object v0, p0, Lo/AppSettingsData;->asBinder:Landroid/os/Handler;

    iget-object v1, p0, Lo/AppSettingsData;->onRelationshipValidationResult:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 251
    :cond_0
    iget v0, p0, Lo/AppSettingsData;->onNavigationEvent:I

    invoke-static {v0}, Lo/SettingsSpiCall;->ICustomTabsCallback(I)V

    .line 253
    iget-object v0, p0, Lo/AppSettingsData;->onMessageChannelReady:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 256
    :try_start_0
    invoke-virtual {v1, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 258
    :catch_0
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 262
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/AppSettingsData;->asInterface:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method


# virtual methods
.method public final onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 67
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 69
    iput-object p1, p0, Lo/AppSettingsData;->onMessageChannelReady:Landroid/app/Activity;

    .line 70
    iget-object v0, p0, Lo/AppSettingsData;->extraCallback:Lo/SettingsSpiCall$onPostMessage$onPostMessage;

    if-nez v0, :cond_0

    .line 71
    invoke-direct {p0}, Lo/AppSettingsData;->onPostMessage()V

    return-void

    .line 78
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lo/AppSettingsData;->asBinder:Landroid/os/Handler;

    .line 79
    iput-object p0, p0, Lo/AppSettingsData;->onTransact:Ljava/lang/Runnable;

    .line 84
    new-instance v0, Lo/AppSettingsData$2;

    invoke-direct {v0, p0}, Lo/AppSettingsData$2;-><init>(Lo/AppSettingsData;)V

    iput-object v0, p0, Lo/AppSettingsData;->onRelationshipValidationResult:Ljava/lang/Runnable;

    .line 111
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lo/AppSettingsData;->onPostMessage:Landroid/view/GestureDetector;

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 177
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 178
    iget-object p1, p0, Lo/AppSettingsData;->asInterface:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 184
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 186
    iget-object p3, p0, Lo/AppSettingsData;->extraCallback:Lo/SettingsSpiCall$onPostMessage$onPostMessage;

    if-nez p3, :cond_0

    .line 187
    invoke-direct {p0}, Lo/AppSettingsData;->onPostMessage()V

    goto/16 :goto_1

    .line 189
    :cond_0
    sget p3, Lo/writeCachedSettings$onMessageChannelReady;->com_mixpanel_android_activity_notification_mini:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lo/AppSettingsData;->ICustomTabsCallback$Stub:Landroid/view/View;

    .line 190
    sget p2, Lo/writeCachedSettings$ICustomTabsCallback;->com_mixpanel_android_notification_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 191
    iget-object p2, p0, Lo/AppSettingsData;->ICustomTabsCallback$Stub:Landroid/view/View;

    sget p3, Lo/writeCachedSettings$ICustomTabsCallback;->com_mixpanel_android_notification_image:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 193
    iget-object p3, p0, Lo/AppSettingsData;->extraCallback:Lo/SettingsSpiCall$onPostMessage$onPostMessage;

    .line 2067
    iget-object p3, p3, Lo/SettingsSpiCall$onPostMessage$onPostMessage;->onPostMessage:Lo/AppRequestData;

    .line 193
    check-cast p3, Lo/getFeaturesData;

    .line 2156
    iget-object v0, p3, Lo/AppRequestData;->onPostMessage:Ljava/lang/String;

    .line 195
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2160
    iget v0, p3, Lo/AppRequestData;->extraCallback:I

    .line 196
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2180
    iget-object p1, p3, Lo/AppRequestData;->onRelationshipValidationResult:Landroid/graphics/Bitmap;

    .line 197
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 199
    iget-object p1, p0, Lo/AppSettingsData;->asBinder:Landroid/os/Handler;

    iget-object v0, p0, Lo/AppSettingsData;->onTransact:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2710

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 201
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 3148
    iget v0, p3, Lo/AppRequestData;->ICustomTabsCallback:I

    .line 202
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v0, 0x40e00000    # 7.0f

    .line 203
    invoke-virtual {p0}, Lo/AppSettingsData;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 4010
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v1

    const/high16 v2, 0x43200000    # 160.0f

    div-float/2addr v1, v2

    mul-float v1, v1, v0

    .line 203
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/high16 v0, 0x40000000    # 2.0f

    .line 204
    invoke-virtual {p0}, Lo/AppSettingsData;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 5010
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    mul-float v1, v1, v0

    float-to-int v0, v1

    .line 5051
    iget v1, p3, Lo/getFeaturesData;->ICustomTabsCallback$Stub:I

    .line 204
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 206
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    .line 207
    iget-object v0, p0, Lo/AppSettingsData;->ICustomTabsCallback$Stub:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 209
    :cond_1
    iget-object v0, p0, Lo/AppSettingsData;->ICustomTabsCallback$Stub:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 212
    :goto_0
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lo/AppSettingsData;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lo/AppSettingsData;->extraCallback:Lo/SettingsSpiCall$onPostMessage$onPostMessage;

    .line 5067
    iget-object v1, v1, Lo/SettingsSpiCall$onPostMessage$onPostMessage;->onPostMessage:Lo/AppRequestData;

    .line 5180
    iget-object v1, v1, Lo/AppRequestData;->onRelationshipValidationResult:Landroid/graphics/Bitmap;

    .line 212
    invoke-direct {p1, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 6047
    iget p3, p3, Lo/getFeaturesData;->asInterface:I

    .line 213
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p3, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 214
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 217
    :goto_1
    iget-object p1, p0, Lo/AppSettingsData;->ICustomTabsCallback$Stub:Landroid/view/View;

    return-object p1
.end method

.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    cmpl-float p1, p4, p1

    if-lez p1, :cond_0

    .line 7121
    invoke-static {p0}, Lo/AppSettingsData;->ICustomTabsCallback(Lo/AppSettingsData;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public final onPause()V
    .locals 0

    .line 241
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 242
    invoke-direct {p0}, Lo/AppSettingsData;->onPostMessage()V

    return-void
.end method

.method public final onResume()V
    .locals 4

    .line 231
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 236
    iget-object v0, p0, Lo/AppSettingsData;->asBinder:Landroid/os/Handler;

    iget-object v1, p0, Lo/AppSettingsData;->onRelationshipValidationResult:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 7

    const-string p1, "MixpanelAPI.InAppFrag"

    .line 8049
    iget-object v0, p0, Lo/AppSettingsData;->extraCallback:Lo/SettingsSpiCall$onPostMessage$onPostMessage;

    .line 8067
    iget-object v0, v0, Lo/SettingsSpiCall$onPostMessage$onPostMessage;->onPostMessage:Lo/AppRequestData;

    .line 7140
    check-cast v0, Lo/getFeaturesData;

    .line 9043
    iget-object v1, v0, Lo/getFeaturesData;->onTransact:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 7144
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 7147
    :try_start_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    .line 7154
    :try_start_1
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v5, v6, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 9049
    iget-object v6, p0, Lo/AppSettingsData;->onMessageChannelReady:Landroid/app/Activity;

    .line 7155
    invoke-virtual {v6, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 7157
    :catch_0
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "User doesn\'t have an activity for notification URI "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lo/TrimmedThrowableData;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 7161
    :goto_0
    :try_start_2
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    const-string v3, "url"

    .line 7162
    invoke-virtual {v4, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v3, v4

    goto :goto_1

    :catch_1
    move-object v3, v4

    :catch_2
    const-string v1, "Can\'t put url into json properties"

    .line 7164
    invoke-static {p1, v1}, Lo/TrimmedThrowableData;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_3
    move-exception v0

    const-string v1, "Can\'t parse notification URI, will not take any action"

    .line 7149
    invoke-static {p1, v1, v0}, Lo/TrimmedThrowableData;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2

    .line 10049
    :cond_0
    :goto_1
    iget-object p1, p0, Lo/AppSettingsData;->ICustomTabsCallback:Lo/Settings;

    .line 10206
    iget-object p1, p1, Lo/Settings;->ICustomTabsCallback:Lo/Settings$extraCallback;

    const-string v1, "$campaign_open"

    .line 7167
    invoke-interface {p1, v1, v0, v3}, Lo/Settings$onMessageChannelReady;->onNavigationEvent(Ljava/lang/String;Lo/AppRequestData;Lorg/json/JSONObject;)V

    .line 7169
    invoke-static {p0}, Lo/AppSettingsData;->ICustomTabsCallback(Lo/AppSettingsData;)V

    return v2
.end method

.method public final onStart()V
    .locals 1

    .line 222
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 224
    iget-object v0, p0, Lo/AppSettingsData;->asInterface:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lo/AppSettingsData;->onMessageChannelReady:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method

.method public final run()V
    .locals 0

    .line 7081
    invoke-static {p0}, Lo/AppSettingsData;->ICustomTabsCallback(Lo/AppSettingsData;)V

    return-void
.end method
