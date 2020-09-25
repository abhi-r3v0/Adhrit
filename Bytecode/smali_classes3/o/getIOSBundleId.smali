.class public final Lo/getIOSBundleId;
.super Lo/onAudioInfoChanged;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Lo/onAudioInfoChanged;"
    }
.end annotation


# static fields
.field private static ICustomTabsCallback$Stub:Ljava/lang/Object;

.field private static asBinder:Ljava/lang/Object;

.field private static asInterface:Ljava/lang/Object;


# instance fields
.field final ICustomTabsCallback:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private ICustomTabsCallback$Stub$Proxy:I

.field private ICustomTabsService:Lo/getMultiFactorInfo;

.field extraCallback:Landroid/widget/Button;

.field private extraCommand:Landroid/widget/TextView;

.field private getInterfaceDescriptor:Lo/parseLink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/parseLink<",
            "TS;>;"
        }
    .end annotation
.end field

.field private mayLaunchUrl:Z

.field private newSession:I

.field onMessageChannelReady:Lo/AnalyticsConnectorRegistrar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AnalyticsConnectorRegistrar<",
            "TS;>;"
        }
    .end annotation
.end field

.field final onNavigationEvent:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/Object<",
            "-TS;>;>;"
        }
    .end annotation
.end field

.field onPostMessage:Lo/addIdTokenListener;

.field private final onRelationshipValidationResult:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Landroid/content/DialogInterface$OnDismissListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onTransact:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Landroid/content/DialogInterface$OnCancelListener;",
            ">;"
        }
    .end annotation
.end field

.field private postMessage:Lo/setFirebaseUIVersion;

.field private requestPostMessageChannel:Ljava/lang/CharSequence;

.field private warmup:Lo/getAndroidMinimumVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getAndroidMinimumVersion<",
            "TS;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "CONFIRM_BUTTON_TAG"

    .line 64
    sput-object v0, Lo/getIOSBundleId;->asBinder:Ljava/lang/Object;

    const-string v0, "CANCEL_BUTTON_TAG"

    .line 65
    sput-object v0, Lo/getIOSBundleId;->asInterface:Ljava/lang/Object;

    const-string v0, "TOGGLE_BUTTON_TAG"

    .line 66
    sput-object v0, Lo/getIOSBundleId;->ICustomTabsCallback$Stub:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Lo/onAudioInfoChanged;-><init>()V

    .line 89
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lo/getIOSBundleId;->onNavigationEvent:Ljava/util/LinkedHashSet;

    .line 91
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lo/getIOSBundleId;->ICustomTabsCallback:Ljava/util/LinkedHashSet;

    .line 93
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lo/getIOSBundleId;->onTransact:Ljava/util/LinkedHashSet;

    .line 95
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lo/getIOSBundleId;->onRelationshipValidationResult:Ljava/util/LinkedHashSet;

    return-void
.end method

.method static ICustomTabsCallback(Landroid/content/Context;)Z
    .locals 4

    .line 378
    sget v0, Lo/toStringMap$extraCallback;->materialCalendarStyle:I

    const-class v1, Lo/getAndroidMinimumVersion;

    .line 380
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 379
    invoke-static {p0, v0, v1}, Lo/sendSignInLinkToEmail;->ICustomTabsCallback(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x101020d

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 382
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 383
    invoke-virtual {p0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 384
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return v0
.end method

.method private static extraCallback(Landroid/content/Context;)I
    .locals 9

    .line 406
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 407
    sget v0, Lo/toStringMap$onMessageChannelReady;->mtrl_calendar_content_padding:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 20101
    new-instance v1, Lo/setUrl;

    .line 21051
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const-string v3, "UTC"

    .line 23042
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    .line 22074
    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v4

    if-nez v2, :cond_0

    .line 22076
    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    goto :goto_0

    .line 22078
    :cond_0
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 24042
    :goto_0
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    .line 23074
    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    .line 23076
    invoke-virtual {v2}, Ljava/util/Calendar;->clear()V

    const/4 v3, 0x1

    .line 21095
    invoke-virtual {v4, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x2

    .line 21096
    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v8, 0x5

    .line 21097
    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 21094
    invoke-virtual {v2, v5, v7, v4}, Ljava/util/Calendar;->set(III)V

    .line 20101
    invoke-direct {v1, v2}, Lo/setUrl;-><init>(Ljava/util/Calendar;)V

    .line 408
    iget v1, v1, Lo/setUrl;->onNavigationEvent:I

    .line 409
    sget v2, Lo/toStringMap$onMessageChannelReady;->mtrl_calendar_day_width:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 410
    sget v4, Lo/toStringMap$onMessageChannelReady;->mtrl_calendar_month_horizontal_padding:I

    .line 411
    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    mul-int/lit8 v0, v0, 0x2

    mul-int v2, v2, v1

    add-int/2addr v0, v2

    sub-int/2addr v1, v3

    mul-int v1, v1, p0

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .line 162
    new-instance p1, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 14153
    iget v1, p0, Lo/getIOSBundleId;->ICustomTabsCallback$Stub$Proxy:I

    if-eqz v1, :cond_0

    goto :goto_0

    .line 14156
    :cond_0
    iget-object v1, p0, Lo/getIOSBundleId;->onMessageChannelReady:Lo/AnalyticsConnectorRegistrar;

    invoke-interface {v1}, Lo/AnalyticsConnectorRegistrar;->onRelationshipValidationResult()I

    move-result v1

    .line 162
    :goto_0
    invoke-direct {p1, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 163
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 164
    invoke-static {v0}, Lo/getIOSBundleId;->ICustomTabsCallback(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lo/getIOSBundleId;->mayLaunchUrl:Z

    .line 165
    sget v1, Lo/toStringMap$extraCallback;->colorSurface:I

    const-class v2, Lo/getIOSBundleId;

    .line 167
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    .line 166
    invoke-static {v0, v1, v2}, Lo/sendSignInLinkToEmail;->ICustomTabsCallback(Landroid/content/Context;ILjava/lang/String;)I

    move-result v1

    .line 168
    new-instance v2, Lo/setFirebaseUIVersion;

    const/4 v3, 0x0

    sget v4, Lo/toStringMap$extraCallback;->materialCalendarStyle:I

    sget v5, Lo/toStringMap$onRelationshipValidationResult;->Widget_MaterialComponents_MaterialCalendar:I

    invoke-direct {v2, v0, v3, v4, v5}, Lo/setFirebaseUIVersion;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v2, p0, Lo/getIOSBundleId;->postMessage:Lo/setFirebaseUIVersion;

    .line 14585
    iget-object v3, v2, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    new-instance v4, Lo/getUsername;

    invoke-direct {v4, v0}, Lo/getUsername;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Lo/setFirebaseUIVersion$extraCallback;->onPostMessage:Lo/getUsername;

    .line 14586
    invoke-virtual {v2}, Lo/setFirebaseUIVersion;->onMessageChannelReady()V

    .line 175
    iget-object v0, p0, Lo/getIOSBundleId;->postMessage:Lo/setFirebaseUIVersion;

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 15288
    iget-object v2, v0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v2, v2, Lo/setFirebaseUIVersion$extraCallback;->onNavigationEvent:Landroid/content/res/ColorStateList;

    if-eq v2, v1, :cond_1

    .line 15289
    iget-object v2, v0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iput-object v1, v2, Lo/setFirebaseUIVersion$extraCallback;->onNavigationEvent:Landroid/content/res/ColorStateList;

    .line 15290
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/setFirebaseUIVersion;->onStateChange([I)Z

    .line 176
    :cond_1
    iget-object v0, p0, Lo/getIOSBundleId;->postMessage:Lo/setFirebaseUIVersion;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lo/unregisterCallbackListener;->mayLaunchUrl(Landroid/view/View;)F

    move-result v1

    .line 15651
    iget-object v2, v0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget v2, v2, Lo/setFirebaseUIVersion$extraCallback;->getInterfaceDescriptor:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_2

    .line 15652
    iget-object v2, v0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iput v1, v2, Lo/setFirebaseUIVersion$extraCallback;->getInterfaceDescriptor:F

    .line 15653
    invoke-virtual {v0}, Lo/setFirebaseUIVersion;->onMessageChannelReady()V

    :cond_2
    return-object p1
.end method

.method final asInterface()V
    .locals 5

    .line 312
    iget-object v0, p0, Lo/getIOSBundleId;->onMessageChannelReady:Lo/AnalyticsConnectorRegistrar;

    .line 314
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 18153
    iget v1, p0, Lo/getIOSBundleId;->ICustomTabsCallback$Stub$Proxy:I

    if-eqz v1, :cond_0

    goto :goto_0

    .line 18156
    :cond_0
    iget-object v1, p0, Lo/getIOSBundleId;->onMessageChannelReady:Lo/AnalyticsConnectorRegistrar;

    invoke-interface {v1}, Lo/AnalyticsConnectorRegistrar;->onRelationshipValidationResult()I

    move-result v1

    .line 314
    :goto_0
    iget-object v2, p0, Lo/getIOSBundleId;->ICustomTabsService:Lo/getMultiFactorInfo;

    .line 313
    invoke-static {v0, v1, v2}, Lo/getAndroidMinimumVersion;->extraCallback(Lo/AnalyticsConnectorRegistrar;ILo/getMultiFactorInfo;)Lo/getAndroidMinimumVersion;

    move-result-object v0

    iput-object v0, p0, Lo/getIOSBundleId;->warmup:Lo/getAndroidMinimumVersion;

    .line 315
    iget-object v0, p0, Lo/getIOSBundleId;->onPostMessage:Lo/addIdTokenListener;

    .line 316
    invoke-virtual {v0}, Lo/addIdTokenListener;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/getIOSBundleId;->onMessageChannelReady:Lo/AnalyticsConnectorRegistrar;

    iget-object v1, p0, Lo/getIOSBundleId;->ICustomTabsService:Lo/getMultiFactorInfo;

    .line 317
    invoke-static {v0, v1}, Lo/setAndroidPackageName;->onPostMessage(Lo/AnalyticsConnectorRegistrar;Lo/getMultiFactorInfo;)Lo/setAndroidPackageName;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lo/getIOSBundleId;->warmup:Lo/getAndroidMinimumVersion;

    :goto_1
    iput-object v0, p0, Lo/getIOSBundleId;->getInterfaceDescriptor:Lo/parseLink;

    .line 319
    invoke-virtual {p0}, Lo/getIOSBundleId;->onPostMessage()V

    .line 321
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    .line 18464
    new-instance v1, Lo/binderDied;

    invoke-direct {v1, v0}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 322
    sget v0, Lo/toStringMap$asInterface;->mtrl_calendar_frame:I

    iget-object v2, p0, Lo/getIOSBundleId;->getInterfaceDescriptor:Lo/parseLink;

    if-eqz v0, :cond_2

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 19343
    invoke-virtual {v1, v0, v2, v3, v4}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 323
    invoke-virtual {v1}, Lo/MediaControllerCompat$MediaControllerImplApi23;->extraCallback()V

    .line 325
    iget-object v0, p0, Lo/getIOSBundleId;->getInterfaceDescriptor:Lo/parseLink;

    new-instance v1, Lo/getIOSBundleId$5;

    invoke-direct {v1, p0}, Lo/getIOSBundleId$5;-><init>(Lo/getIOSBundleId;)V

    invoke-virtual {v0, v1}, Lo/parseLink;->onPostMessage(Lo/setHandleCodeInApp;)Z

    return-void

    .line 19341
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must use non-zero containerViewId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .line 277
    iget-object v0, p0, Lo/getIOSBundleId;->onTransact:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/DialogInterface$OnCancelListener;

    .line 278
    invoke-interface {v1, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    goto :goto_0

    .line 280
    :cond_0
    invoke-super {p0, p1}, Lo/onAudioInfoChanged;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 143
    invoke-super {p0, p1}, Lo/onAudioInfoChanged;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 144
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    :cond_0
    const-string v0, "OVERRIDE_THEME_RES_ID"

    .line 145
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lo/getIOSBundleId;->ICustomTabsCallback$Stub$Proxy:I

    const-string v0, "DATE_SELECTOR_KEY"

    .line 146
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lo/AnalyticsConnectorRegistrar;

    iput-object v0, p0, Lo/getIOSBundleId;->onMessageChannelReady:Lo/AnalyticsConnectorRegistrar;

    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    .line 147
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lo/getMultiFactorInfo;

    iput-object v0, p0, Lo/getIOSBundleId;->ICustomTabsService:Lo/getMultiFactorInfo;

    const-string v0, "TITLE_TEXT_RES_ID_KEY"

    .line 148
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lo/getIOSBundleId;->newSession:I

    const-string v0, "TITLE_TEXT_KEY"

    .line 149
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lo/getIOSBundleId;->requestPostMessageChannel:Ljava/lang/CharSequence;

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .line 186
    iget-boolean p3, p0, Lo/getIOSBundleId;->mayLaunchUrl:Z

    if-eqz p3, :cond_0

    sget p3, Lo/toStringMap$asBinder;->mtrl_picker_fullscreen:I

    goto :goto_0

    :cond_0
    sget p3, Lo/toStringMap$asBinder;->mtrl_picker_dialog:I

    .line 187
    :goto_0
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 188
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 190
    iget-boolean p3, p0, Lo/getIOSBundleId;->mayLaunchUrl:Z

    const/4 v0, 0x1

    if-eqz p3, :cond_1

    .line 191
    sget p3, Lo/toStringMap$asInterface;->mtrl_calendar_frame:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 192
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 193
    invoke-static {p2}, Lo/getIOSBundleId;->extraCallback(Landroid/content/Context;)I

    move-result v2

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 192
    invoke-virtual {p3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 195
    :cond_1
    sget p3, Lo/toStringMap$asInterface;->mtrl_calendar_main_pane:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 196
    sget v1, Lo/toStringMap$asInterface;->mtrl_calendar_frame:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 197
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 198
    invoke-static {p2}, Lo/getIOSBundleId;->extraCallback(Landroid/content/Context;)I

    move-result v3

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 197
    invoke-virtual {p3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p3

    .line 16389
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 16390
    sget v2, Lo/toStringMap$onMessageChannelReady;->mtrl_calendar_navigation_height:I

    .line 16391
    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v3, Lo/toStringMap$onMessageChannelReady;->mtrl_calendar_navigation_top_padding:I

    .line 16392
    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lo/toStringMap$onMessageChannelReady;->mtrl_calendar_navigation_bottom_padding:I

    .line 16393
    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 16394
    sget v3, Lo/toStringMap$onMessageChannelReady;->mtrl_calendar_days_of_week_height:I

    .line 16395
    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 16396
    sget v4, Lo/setIOSBundleId;->onMessageChannelReady:I

    sget v5, Lo/toStringMap$onMessageChannelReady;->mtrl_calendar_day_height:I

    .line 16398
    invoke-virtual {p3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    mul-int v4, v4, v5

    sget v5, Lo/setIOSBundleId;->onMessageChannelReady:I

    sub-int/2addr v5, v0

    sget v6, Lo/toStringMap$onMessageChannelReady;->mtrl_calendar_month_vertical_padding:I

    .line 16400
    invoke-virtual {p3, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    mul-int v5, v5, v6

    add-int/2addr v4, v5

    .line 16401
    sget v5, Lo/toStringMap$onMessageChannelReady;->mtrl_calendar_bottom_padding:I

    invoke-virtual {p3, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    add-int/2addr v2, v3

    add-int/2addr v2, v4

    add-int/2addr v2, p3

    .line 199
    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 202
    :goto_1
    sget p3, Lo/toStringMap$asInterface;->mtrl_picker_header_selection_text:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lo/getIOSBundleId;->extraCommand:Landroid/widget/TextView;

    .line 203
    invoke-static {p3, v0}, Lo/unregisterCallbackListener;->onNavigationEvent(Landroid/view/View;I)V

    .line 205
    sget p3, Lo/toStringMap$asInterface;->mtrl_picker_header_toggle:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lo/addIdTokenListener;

    iput-object p3, p0, Lo/getIOSBundleId;->onPostMessage:Lo/addIdTokenListener;

    .line 206
    sget p3, Lo/toStringMap$asInterface;->mtrl_picker_title_text:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 207
    iget-object v1, p0, Lo/getIOSBundleId;->requestPostMessageChannel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    .line 208
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 210
    :cond_2
    iget v1, p0, Lo/getIOSBundleId;->newSession:I

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(I)V

    .line 17340
    :goto_2
    iget-object p3, p0, Lo/getIOSBundleId;->onPostMessage:Lo/addIdTokenListener;

    sget-object v1, Lo/getIOSBundleId;->ICustomTabsCallback$Stub:Ljava/lang/Object;

    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 17341
    iget-object p3, p0, Lo/getIOSBundleId;->onPostMessage:Lo/addIdTokenListener;

    .line 17368
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    new-array v2, v0, [I

    const v3, 0x10100a0

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 17369
    sget v3, Lo/toStringMap$onNavigationEvent;->ic_calendar_black_24dp:I

    .line 17371
    invoke-static {p2, v3}, Lo/postMessage;->extraCallback(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 17369
    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v2, v4, [I

    .line 17372
    sget v3, Lo/toStringMap$onNavigationEvent;->ic_edit_black_24dp:I

    .line 17373
    invoke-static {p2, v3}, Lo/postMessage;->extraCallback(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 17372
    invoke-virtual {v1, v2, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 17341
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 17344
    iget-object p2, p0, Lo/getIOSBundleId;->onPostMessage:Lo/addIdTokenListener;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lo/unregisterCallbackListener;->onMessageChannelReady(Landroid/view/View;Lo/onSessionDestroyed;)V

    .line 17345
    iget-object p2, p0, Lo/getIOSBundleId;->onPostMessage:Lo/addIdTokenListener;

    invoke-virtual {p0, p2}, Lo/getIOSBundleId;->onNavigationEvent(Lo/addIdTokenListener;)V

    .line 17346
    iget-object p2, p0, Lo/getIOSBundleId;->onPostMessage:Lo/addIdTokenListener;

    new-instance p3, Lo/getIOSBundleId$1;

    invoke-direct {p3, p0}, Lo/getIOSBundleId$1;-><init>(Lo/getIOSBundleId;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    sget p2, Lo/toStringMap$asInterface;->confirm_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lo/getIOSBundleId;->extraCallback:Landroid/widget/Button;

    .line 215
    iget-object p2, p0, Lo/getIOSBundleId;->onMessageChannelReady:Lo/AnalyticsConnectorRegistrar;

    invoke-interface {p2}, Lo/AnalyticsConnectorRegistrar;->onPostMessage()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 216
    iget-object p2, p0, Lo/getIOSBundleId;->extraCallback:Landroid/widget/Button;

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_3

    .line 218
    :cond_3
    iget-object p2, p0, Lo/getIOSBundleId;->extraCallback:Landroid/widget/Button;

    invoke-virtual {p2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 220
    :goto_3
    iget-object p2, p0, Lo/getIOSBundleId;->extraCallback:Landroid/widget/Button;

    sget-object p3, Lo/getIOSBundleId;->asBinder:Ljava/lang/Object;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 221
    iget-object p2, p0, Lo/getIOSBundleId;->extraCallback:Landroid/widget/Button;

    new-instance p3, Lo/getIOSBundleId$3;

    invoke-direct {p3, p0}, Lo/getIOSBundleId$3;-><init>(Lo/getIOSBundleId;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    sget p2, Lo/toStringMap$asInterface;->cancel_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 234
    sget-object p3, Lo/getIOSBundleId;->asInterface:Ljava/lang/Object;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 235
    new-instance p3, Lo/getIOSBundleId$2;

    invoke-direct {p3, p0}, Lo/getIOSBundleId$2;-><init>(Lo/getIOSBundleId;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 285
    iget-object v0, p0, Lo/getIOSBundleId;->onRelationshipValidationResult:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/DialogInterface$OnDismissListener;

    .line 286
    invoke-interface {v1, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    goto :goto_0

    .line 288
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 290
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 292
    :cond_1
    invoke-super {p0, p1}, Lo/onAudioInfoChanged;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method final onNavigationEvent(Lo/addIdTokenListener;)V
    .locals 1

    .line 358
    iget-object v0, p0, Lo/getIOSBundleId;->onPostMessage:Lo/addIdTokenListener;

    .line 359
    invoke-virtual {v0}, Lo/addIdTokenListener;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lo/toStringMap$onTransact;->mtrl_picker_toggle_to_calendar_input_mode:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 361
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lo/toStringMap$onTransact;->mtrl_picker_toggle_to_text_input_mode:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 362
    :goto_0
    iget-object v0, p0, Lo/getIOSBundleId;->onPostMessage:Lo/addIdTokenListener;

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method final onPostMessage()V
    .locals 5

    .line 18086
    iget-object v0, p0, Lo/getIOSBundleId;->onMessageChannelReady:Lo/AnalyticsConnectorRegistrar;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    invoke-interface {v0}, Lo/AnalyticsConnectorRegistrar;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v0

    .line 306
    iget-object v1, p0, Lo/getIOSBundleId;->extraCommand:Landroid/widget/TextView;

    sget v2, Lo/toStringMap$onTransact;->mtrl_picker_announce_current_selection:I

    .line 307
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 306
    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v1, p0, Lo/getIOSBundleId;->extraCommand:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 11

    .line 127
    invoke-super {p0, p1}, Lo/onAudioInfoChanged;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 128
    iget v0, p0, Lo/getIOSBundleId;->ICustomTabsCallback$Stub$Proxy:I

    const-string v1, "OVERRIDE_THEME_RES_ID"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 129
    iget-object v0, p0, Lo/getIOSBundleId;->onMessageChannelReady:Lo/AnalyticsConnectorRegistrar;

    const-string v1, "DATE_SELECTOR_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 131
    new-instance v0, Lo/getMultiFactorInfo$extraCallback;

    iget-object v1, p0, Lo/getIOSBundleId;->ICustomTabsService:Lo/getMultiFactorInfo;

    invoke-direct {v0, v1}, Lo/getMultiFactorInfo$extraCallback;-><init>(Lo/getMultiFactorInfo;)V

    .line 133
    iget-object v1, p0, Lo/getIOSBundleId;->warmup:Lo/getAndroidMinimumVersion;

    .line 1283
    iget-object v1, v1, Lo/getAndroidMinimumVersion;->onPostMessage:Lo/setUrl;

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lo/getIOSBundleId;->warmup:Lo/getAndroidMinimumVersion;

    .line 2283
    iget-object v1, v1, Lo/getAndroidMinimumVersion;->onPostMessage:Lo/setUrl;

    .line 134
    iget-wide v1, v1, Lo/setUrl;->onRelationshipValidationResult:J

    .line 3279
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lo/getMultiFactorInfo$extraCallback;->onPostMessage:Ljava/lang/Long;

    .line 3296
    :cond_0
    iget-object v1, v0, Lo/getMultiFactorInfo$extraCallback;->onPostMessage:Ljava/lang/Long;

    const-string v2, "UTC"

    if-nez v1, :cond_3

    .line 4101
    new-instance v1, Lo/setUrl;

    .line 5051
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 7042
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    .line 6074
    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v4

    if-nez v3, :cond_1

    .line 6076
    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    goto :goto_0

    .line 6078
    :cond_1
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 8042
    :goto_0
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    .line 7074
    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v3

    .line 7076
    invoke-virtual {v3}, Ljava/util/Calendar;->clear()V

    const/4 v5, 0x1

    .line 5095
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x2

    .line 5096
    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v7, 0x5

    .line 5097
    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 5094
    invoke-virtual {v3, v5, v6, v4}, Ljava/util/Calendar;->set(III)V

    .line 4101
    invoke-direct {v1, v3}, Lo/setUrl;-><init>(Ljava/util/Calendar;)V

    .line 4077
    iget-wide v3, v1, Lo/setUrl;->onRelationshipValidationResult:J

    .line 3298
    iget-wide v5, v0, Lo/getMultiFactorInfo$extraCallback;->ICustomTabsCallback:J

    cmp-long v1, v5, v3

    if-gtz v1, :cond_2

    iget-wide v5, v0, Lo/getMultiFactorInfo$extraCallback;->onNavigationEvent:J

    cmp-long v1, v3, v5

    if-gtz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-wide v3, v0, Lo/getMultiFactorInfo$extraCallback;->ICustomTabsCallback:J

    :goto_1
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lo/getMultiFactorInfo$extraCallback;->onPostMessage:Ljava/lang/Long;

    .line 3300
    :cond_3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3301
    iget-object v3, v0, Lo/getMultiFactorInfo$extraCallback;->extraCallback:Lo/getMultiFactorInfo$onNavigationEvent;

    const-string v4, "DEEP_COPY_VALIDATOR_KEY"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3302
    new-instance v3, Lo/getMultiFactorInfo;

    iget-wide v5, v0, Lo/getMultiFactorInfo$extraCallback;->ICustomTabsCallback:J

    .line 10042
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    .line 9074
    invoke-static {v7}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v7

    .line 9076
    invoke-virtual {v7}, Ljava/util/Calendar;->clear()V

    .line 8075
    invoke-virtual {v7, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 8076
    new-instance v6, Lo/setUrl;

    invoke-direct {v6, v7}, Lo/setUrl;-><init>(Ljava/util/Calendar;)V

    .line 3303
    iget-wide v7, v0, Lo/getMultiFactorInfo$extraCallback;->onNavigationEvent:J

    .line 12042
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    .line 11074
    invoke-static {v5}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v5

    .line 11076
    invoke-virtual {v5}, Ljava/util/Calendar;->clear()V

    .line 10075
    invoke-virtual {v5, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 10076
    new-instance v7, Lo/setUrl;

    invoke-direct {v7, v5}, Lo/setUrl;-><init>(Ljava/util/Calendar;)V

    .line 3304
    iget-object v0, v0, Lo/getMultiFactorInfo$extraCallback;->onPostMessage:Ljava/lang/Long;

    .line 3305
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    .line 14042
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 13074
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 13076
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 12075
    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 12076
    new-instance v8, Lo/setUrl;

    invoke-direct {v8, v0}, Lo/setUrl;-><init>(Ljava/util/Calendar;)V

    .line 3306
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lo/getMultiFactorInfo$onNavigationEvent;

    const/4 v10, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lo/getMultiFactorInfo;-><init>(Lo/setUrl;Lo/setUrl;Lo/setUrl;Lo/getMultiFactorInfo$onNavigationEvent;B)V

    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    .line 136
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 137
    iget v0, p0, Lo/getIOSBundleId;->newSession:I

    const-string v1, "TITLE_TEXT_RES_ID_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 138
    iget-object v0, p0, Lo/getIOSBundleId;->requestPostMessageChannel:Ljava/lang/CharSequence;

    const-string v1, "TITLE_TEXT_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onStart()V
    .locals 9

    .line 250
    invoke-super {p0}, Lo/onAudioInfoChanged;->onStart()V

    .line 251
    invoke-virtual {p0}, Lo/onAudioInfoChanged;->i_()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 253
    iget-boolean v1, p0, Lo/getIOSBundleId;->mayLaunchUrl:Z

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    .line 254
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 255
    iget-object v1, p0, Lo/getIOSBundleId;->postMessage:Lo/setFirebaseUIVersion;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 v1, -0x2

    .line 257
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 259
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lo/toStringMap$onMessageChannelReady;->mtrl_calendar_dialog_background_inset:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    .line 260
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v8, v8, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 261
    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    iget-object v4, p0, Lo/getIOSBundleId;->postMessage:Lo/setFirebaseUIVersion;

    move-object v3, v2

    move v5, v8

    move v6, v8

    move v7, v8

    invoke-direct/range {v3 .. v8}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 263
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v2, Lo/getLanguageCode;

    .line 264
    invoke-virtual {p0}, Lo/onAudioInfoChanged;->i_()Landroid/app/Dialog;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lo/getLanguageCode;-><init>(Landroid/app/Dialog;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 266
    :goto_0
    invoke-virtual {p0}, Lo/getIOSBundleId;->asInterface()V

    return-void
.end method

.method public final onStop()V
    .locals 1

    .line 271
    iget-object v0, p0, Lo/getIOSBundleId;->getInterfaceDescriptor:Lo/parseLink;

    invoke-virtual {v0}, Lo/parseLink;->onNavigationEvent()V

    .line 272
    invoke-super {p0}, Lo/onAudioInfoChanged;->onStop()V

    return-void
.end method
