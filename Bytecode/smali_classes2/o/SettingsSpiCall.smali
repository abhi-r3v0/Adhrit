.class public Lo/SettingsSpiCall;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/SettingsSpiCall$onPostMessage;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/SettingsSpiCall;",
            ">;"
        }
    .end annotation
.end field

.field private static ICustomTabsCallback$Stub:I

.field private static asBinder:Lo/SettingsSpiCall;

.field private static final onMessageChannelReady:Ljava/util/concurrent/locks/ReentrantLock;

.field private static onNavigationEvent:J

.field private static onTransact:I


# instance fields
.field public final ICustomTabsCallback:Lo/SettingsSpiCall$onPostMessage;

.field private final extraCallback:Ljava/lang/String;

.field public final onPostMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 261
    new-instance v0, Lo/SettingsSpiCall$5;

    invoke-direct {v0}, Lo/SettingsSpiCall$5;-><init>()V

    sput-object v0, Lo/SettingsSpiCall;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 319
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lo/SettingsSpiCall;->onMessageChannelReady:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v0, -0x1

    .line 320
    sput-wide v0, Lo/SettingsSpiCall;->onNavigationEvent:J

    const/4 v0, 0x0

    .line 321
    sput-object v0, Lo/SettingsSpiCall;->asBinder:Lo/SettingsSpiCall;

    const/4 v0, 0x0

    .line 322
    sput v0, Lo/SettingsSpiCall;->onTransact:I

    const/4 v0, -0x1

    .line 323
    sput v0, Lo/SettingsSpiCall;->ICustomTabsCallback$Stub:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.mixpanel.android.mpmetrics.UpdateDisplayState.DISTINCT_ID_BUNDLE_KEY"

    .line 310
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/SettingsSpiCall;->extraCallback:Ljava/lang/String;

    const-string v0, "com.mixpanel.android.mpmetrics.UpdateDisplayState.TOKEN_BUNDLE_KEY"

    .line 311
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/SettingsSpiCall;->onPostMessage:Ljava/lang/String;

    const-string v0, "com.mixpanel.android.mpmetrics.UpdateDisplayState.DISPLAYSTATE_BUNDLE_KEY"

    .line 312
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lo/SettingsSpiCall$onPostMessage;

    iput-object p1, p0, Lo/SettingsSpiCall;->ICustomTabsCallback:Lo/SettingsSpiCall$onPostMessage;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Bundle;B)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lo/SettingsSpiCall;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method private constructor <init>(Lo/SettingsSpiCall$onPostMessage;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    iput-object p2, p0, Lo/SettingsSpiCall;->extraCallback:Ljava/lang/String;

    .line 304
    iput-object p3, p0, Lo/SettingsSpiCall;->onPostMessage:Ljava/lang/String;

    .line 305
    iput-object p1, p0, Lo/SettingsSpiCall;->ICustomTabsCallback:Lo/SettingsSpiCall$onPostMessage;

    return-void
.end method

.method public static ICustomTabsCallback(I)V
    .locals 1

    .line 227
    sget-object v0, Lo/SettingsSpiCall;->onMessageChannelReady:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 229
    :try_start_0
    sget v0, Lo/SettingsSpiCall;->ICustomTabsCallback$Stub:I

    if-ne p0, v0, :cond_0

    const/4 p0, -0x1

    .line 230
    sput p0, Lo/SettingsSpiCall;->ICustomTabsCallback$Stub:I

    const/4 p0, 0x0

    .line 231
    sput-object p0, Lo/SettingsSpiCall;->asBinder:Lo/SettingsSpiCall;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    :cond_0
    sget-object p0, Lo/SettingsSpiCall;->onMessageChannelReady:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p0

    sget-object v0, Lo/SettingsSpiCall;->onMessageChannelReady:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 235
    throw p0
.end method

.method static extraCallback()Z
    .locals 5

    .line 193
    sget-object v0, Lo/SettingsSpiCall;->onMessageChannelReady:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 196
    sget-wide v2, Lo/SettingsSpiCall;->onNavigationEvent:J

    sub-long/2addr v0, v2

    .line 198
    sget v2, Lo/SettingsSpiCall;->onTransact:I

    if-lez v2, :cond_0

    const-wide/32 v2, 0x2932e00

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const-string v0, "MixpanelAPI.UpDisplSt"

    const-string v1, "UpdateDisplayState set long, long ago, without showing. Update state will be cleared."

    .line 199
    invoke-static {v0, v1}, Lo/TrimmedThrowableData;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 200
    sput-object v0, Lo/SettingsSpiCall;->asBinder:Lo/SettingsSpiCall;

    .line 203
    :cond_0
    sget-object v0, Lo/SettingsSpiCall;->asBinder:Lo/SettingsSpiCall;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0

    .line 193
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method static onMessageChannelReady()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    .line 188
    sget-object v0, Lo/SettingsSpiCall;->onMessageChannelReady:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method public static onMessageChannelReady(I)Lo/SettingsSpiCall;
    .locals 2

    .line 242
    sget-object v0, Lo/SettingsSpiCall;->onMessageChannelReady:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 244
    :try_start_0
    sget v0, Lo/SettingsSpiCall;->ICustomTabsCallback$Stub:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    sget v0, Lo/SettingsSpiCall;->ICustomTabsCallback$Stub:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, p0, :cond_0

    .line 257
    :goto_0
    sget-object p0, Lo/SettingsSpiCall;->onMessageChannelReady:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    .line 247
    :cond_0
    :try_start_1
    sget-object v0, Lo/SettingsSpiCall;->asBinder:Lo/SettingsSpiCall;

    if-nez v0, :cond_1

    goto :goto_0

    .line 252
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lo/SettingsSpiCall;->onNavigationEvent:J

    .line 253
    sput p0, Lo/SettingsSpiCall;->ICustomTabsCallback$Stub:I

    .line 254
    sget-object p0, Lo/SettingsSpiCall;->asBinder:Lo/SettingsSpiCall;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    sget-object v0, Lo/SettingsSpiCall;->onMessageChannelReady:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p0

    :catchall_0
    move-exception p0

    sget-object v0, Lo/SettingsSpiCall;->onMessageChannelReady:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 258
    throw p0
.end method

.method static onPostMessage(Lo/SettingsSpiCall$onPostMessage;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 210
    sget-object v0, Lo/SettingsSpiCall;->onMessageChannelReady:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    invoke-static {}, Lo/SettingsSpiCall;->extraCallback()Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lo/SettingsSpiCall;->onNavigationEvent:J

    .line 213
    new-instance v0, Lo/SettingsSpiCall;

    invoke-direct {v0, p0, p1, p2}, Lo/SettingsSpiCall;-><init>(Lo/SettingsSpiCall$onPostMessage;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lo/SettingsSpiCall;->asBinder:Lo/SettingsSpiCall;

    .line 214
    sget p0, Lo/SettingsSpiCall;->onTransact:I

    add-int/lit8 p0, p0, 0x1

    .line 215
    sput p0, Lo/SettingsSpiCall;->onTransact:I

    goto :goto_0

    :cond_0
    const-string p0, "MixpanelAPI.UpDisplSt"

    const-string p1, "Already showing (or cooking) a Mixpanel update, declining to show another."

    .line 217
    invoke-static {p0, p1}, Lo/TrimmedThrowableData;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    :goto_0
    return p0

    .line 210
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 282
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 283
    iget-object v0, p0, Lo/SettingsSpiCall;->extraCallback:Ljava/lang/String;

    const-string v1, "com.mixpanel.android.mpmetrics.UpdateDisplayState.DISTINCT_ID_BUNDLE_KEY"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lo/SettingsSpiCall;->onPostMessage:Ljava/lang/String;

    const-string v1, "com.mixpanel.android.mpmetrics.UpdateDisplayState.TOKEN_BUNDLE_KEY"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lo/SettingsSpiCall;->ICustomTabsCallback:Lo/SettingsSpiCall$onPostMessage;

    const-string v1, "com.mixpanel.android.mpmetrics.UpdateDisplayState.DISPLAYSTATE_BUNDLE_KEY"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 286
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
