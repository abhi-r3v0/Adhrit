.class public abstract Lcom/google/android/gms/internal/vision/zzhl;
.super Lo/createAdOverlay;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/vision/zzhl$onMessageChannelReady;,
        Lcom/google/android/gms/internal/vision/zzhl$zza;
    }
.end annotation


# static fields
.field private static final onMessageChannelReady:Z

.field private static final onNavigationEvent:Ljava/util/logging/Logger;


# instance fields
.field public extraCallback:Lo/getErrorString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 255
    const-class v0, Lcom/google/android/gms/internal/vision/zzhl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/vision/zzhl;->onNavigationEvent:Ljava/util/logging/Logger;

    .line 256
    invoke-static {}, Lo/WakeLockEvent;->onMessageChannelReady()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/internal/vision/zzhl;->onMessageChannelReady:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Lo/createAdOverlay;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/SignInConfiguration;)V
    .locals 0

    .line 253
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzhl;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback(ID)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    .line 87
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzhl;->asBinder(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static ICustomTabsCallback(IJ)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    .line 60
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzhl;->asBinder(I)I

    move-result p0

    .line 61
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/vision/zzhl;->onMessageChannelReady(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static ICustomTabsCallback(ILjava/lang/String;)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    .line 104
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzhl;->asBinder(I)I

    move-result p0

    .line 105
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzhl;->onMessageChannelReady(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static ICustomTabsCallback(ILo/disconnectService;)I
    .locals 2

    const/16 v0, 0x8

    .line 152
    invoke-static {v0}, Lcom/google/android/gms/internal/vision/zzhl;->asBinder(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    const/4 v1, 0x2

    .line 154
    invoke-static {v1, p0}, Lcom/google/android/gms/internal/vision/zzhl;->onRelationshipValidationResult(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    .line 155
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/vision/zzhl;->onNavigationEvent(ILo/disconnectService;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static ICustomTabsCallback(ILo/getMobileAdsSettingsManager;)I
    .locals 2

    const/16 v0, 0x8

    .line 144
    invoke-static {v0}, Lcom/google/android/gms/internal/vision/zzhl;->asBinder(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    const/4 v1, 0x2

    .line 146
    invoke-static {v1, p0}, Lcom/google/android/gms/internal/vision/zzhl;->onRelationshipValidationResult(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    .line 147
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/vision/zzhl;->extraCallback(ILo/getMobileAdsSettingsManager;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static ICustomTabsCallback(ILo/getStartServicePackage;Lo/getService;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    shl-int/lit8 p0, p0, 0x3

    .line 242
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzhl;->asBinder(I)I

    move-result p0

    shl-int/lit8 p0, p0, 0x1

    .line 244
    check-cast p1, Lo/setShouldSkipGmsCoreVersionCheck;

    .line 245
    invoke-virtual {p1}, Lo/setShouldSkipGmsCoreVersionCheck;->ICustomTabsCallback$Stub()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 247
    invoke-interface {p2, p1}, Lo/getService;->onPostMessage(Ljava/lang/Object;)I

    move-result v0

    .line 248
    invoke-virtual {p1, v0}, Lo/setShouldSkipGmsCoreVersionCheck;->onMessageChannelReady(I)V

    :cond_0
    add-int/2addr p0, v0

    return p0
.end method

.method public static ICustomTabsCallback(J)I
    .locals 0

    .line 175
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/vision/zzhl;->onMessageChannelReady(J)I

    move-result p0

    return p0
.end method

.method public static ICustomTabsCallback(Lo/getMobileAdsSettingsManager;)I
    .locals 1

    .line 208
    invoke-virtual {p0}, Lo/getMobileAdsSettingsManager;->onNavigationEvent()I

    move-result p0

    .line 209
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzhl;->asBinder(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static ICustomTabsCallback(Lo/getStartServicePackage;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 251
    invoke-interface {p0}, Lo/getStartServicePackage;->getInterfaceDescriptor()I

    move-result p0

    return p0
.end method

.method public static ICustomTabsCallback(Z)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static ICustomTabsCallback$Stub(I)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public static ICustomTabsCallback$Stub(II)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    .line 36
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzhl;->asBinder(I)I

    move-result p0

    .line 38
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzhl;->warmup(I)I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzhl;->asBinder(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static ICustomTabsCallback$Stub(J)I
    .locals 0

    .line 190
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/vision/zzhl;->asBinder(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/vision/zzhl;->onMessageChannelReady(J)I

    move-result p0

    return p0
.end method

.method public static ICustomTabsCallback$Stub$Proxy(I)I
    .locals 0

    .line 196
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzhl;->onTransact(I)I

    move-result p0

    return p0
.end method

.method public static asBinder(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x5

    return p0
.end method

.method public static asBinder(II)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    .line 26
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzhl;->asBinder(I)I

    move-result p0

    .line 27
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzhl;->onTransact(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static asBinder(IJ)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    .line 65
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzhl;->asBinder(I)I

    move-result p0

    .line 67
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/vision/zzhl;->asBinder(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/vision/zzhl;->onMessageChannelReady(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method private static asBinder(J)J
    .locals 3

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static asInterface(I)I
    .locals 0

    .line 172
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzhl;->warmup(I)I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzhl;->asBinder(I)I

    move-result p0

    return p0
.end method

.method public static asInterface(II)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    .line 43
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzhl;->asBinder(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static asInterface(IJ)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    .line 72
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzhl;->asBinder(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static extraCallback(I)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    .line 159
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzhl;->asBinder(I)I

    move-result p0

    return p0
.end method

.method public static extraCallback(ILo/getMobileAdsSettingsManager;)I
    .locals 1

    shl-int/lit8 p0, p0, 0x3

    .line 109
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzhl;->asBinder(I)I

    move-result p0

    .line 111
    invoke-virtual {p1}, Lo/getMobileAdsSettingsManager;->onNavigationEvent()I

    move-result p1

    .line 112
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzhl;->asBinder(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr p0, v0

    return p0
.end method

.method public static extraCallback(ILo/getStartServicePackage;)I
    .locals 2

    const/16 v0, 0x8

    .line 130
    invoke-static {v0}, Lcom/google/android/gms/internal/vision/zzhl;->asBinder(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    const/4 v1, 0x2

    .line 132
    invoke-static {v1, p0}, Lcom/google/android/gms/internal/vision/zzhl;->onRelationshipValidationResult(II)I

    move-result p0

    add-int/2addr v0, p0

    const/16 p0, 0x18

    .line 137
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzhl;->asBinder(I)I

    move-result p0

    .line 138
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzhl;->extraCallback(Lo/getStartServicePackage;)I

    move-result p1

    add-int/2addr p0, p1

    add-int/2addr v0, p0

    return v0
.end method

.method public static extraCallback(IZ)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    .line 92
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzhl;->asBinder(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static extraCallback(Lo/disconnectService;)I
    .locals 1

    .line 205
    invoke-virtual {p0}, Lo/disconnectService;->onPostMessage()I

    move-result p0

    .line 206
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzhl;->asBinder(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static extraCallback(Lo/getStartServicePackage;)I
    .locals 1

    .line 214
    invoke-interface {p0}, Lo/getStartServicePackage;->getInterfaceDescriptor()I

    move-result p0

    .line 215
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzhl;->asBinder(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static extraCallback(Lo/getStartServicePackage;Lo/getService;)I
    .locals 2

    .line 217
    check-cast p0, Lo/setShouldSkipGmsCoreVersionCheck;

    .line 218
    invoke-virtual {p0}, Lo/setShouldSkipGmsCoreVersionCheck;->ICustomTabsCallback$Stub()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 220
    invoke-interface {p1, p0}, Lo/getService;->onPostMessage(Ljava/lang/Object;)I

    move-result v0

    .line 221
    invoke-virtual {p0, v0}, Lo/setShouldSkipGmsCoreVersionCheck;->onMessageChannelReady(I)V

    .line 224
    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/vision/zzhl;->asBinder(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public static extraCallback([B)I
    .locals 1

    .line 211
    array-length p0, p0

    .line 212
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzhl;->asBinder(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static getInterfaceDescriptor(I)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 252
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzhl;->asBinder(I)I

    move-result p0

    return p0
.end method

.method public static newSession(II)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    .line 97
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzhl;->asBinder(I)I

    move-result p0

    .line 99
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzhl;->onTransact(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static onMessageChannelReady(IF)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    .line 82
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzhl;->asBinder(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static onMessageChannelReady(IJ)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    .line 53
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzhl;->asBinder(I)I

    move-result p0

    .line 55
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/vision/zzhl;->onMessageChannelReady(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static onMessageChannelReady(J)I
    .locals 6

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    cmp-long v0, p0, v2

    if-gez v0, :cond_1

    const/16 p0, 0xa

    return p0

    :cond_1
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    const/4 v0, 0x6

    const/16 v1, 0x1c

    ushr-long/2addr p0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :goto_0
    const-wide/32 v4, -0x200000

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x2

    const/16 v1, 0xe

    ushr-long/2addr p0, v1

    :cond_3
    const-wide/16 v4, -0x4000

    and-long/2addr p0, v4

    cmp-long v1, p0, v2

    if-eqz v1, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    return v0
.end method

.method public static onMessageChannelReady(Ljava/lang/String;)I
    .locals 1

    .line 197
    :try_start_0
    invoke-static {p0}, Lo/SafeParcelable;->onMessageChannelReady(Ljava/lang/CharSequence;)I

    move-result p0
    :try_end_0
    .catch Lo/getException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 200
    :catch_0
    sget-object v0, Lo/cancelAvailabilityErrorNotifications;->onPostMessage:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 201
    array-length p0, p0

    .line 203
    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzhl;->asBinder(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static onNavigationEvent(ILo/disconnectService;)I
    .locals 1

    shl-int/lit8 p0, p0, 0x3

    .line 117
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzhl;->asBinder(I)I

    move-result p0

    .line 119
    invoke-virtual {p1}, Lo/disconnectService;->onPostMessage()I

    move-result p1

    .line 120
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzhl;->asBinder(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr p0, v0

    return p0
.end method

.method public static onNavigationEvent(ILo/getStartServicePackage;Lo/getService;)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    .line 125
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzhl;->asBinder(I)I

    move-result p0

    .line 126
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/vision/zzhl;->extraCallback(Lo/getStartServicePackage;Lo/getService;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static onNavigationEvent([B)Lcom/google/android/gms/internal/vision/zzhl;
    .locals 3

    .line 1
    array-length v0, p0

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/vision/zzhl$onMessageChannelReady;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/gms/internal/vision/zzhl$onMessageChannelReady;-><init>([BII)V

    return-object v1
.end method

.method public static onPostMessage(D)I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public static onPostMessage(F)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method static synthetic onPostMessage()Z
    .locals 1

    .line 254
    sget-boolean v0, Lcom/google/android/gms/internal/vision/zzhl;->onMessageChannelReady:Z

    return v0
.end method

.method public static onRelationshipValidationResult(I)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public static onRelationshipValidationResult(II)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    .line 31
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzhl;->asBinder(I)I

    move-result p0

    .line 32
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzhl;->asBinder(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static onRelationshipValidationResult(J)I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public static onTransact(I)I
    .locals 0

    if-ltz p0, :cond_0

    .line 161
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzhl;->asBinder(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0
.end method

.method public static onTransact(II)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    .line 48
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzhl;->asBinder(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static onTransact(IJ)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    .line 77
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzhl;->asBinder(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static onTransact(J)I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method private static warmup(I)I
    .locals 1

    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 2

    .line 228
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzhl;->extraCallback()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 229
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract ICustomTabsCallback(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract ICustomTabsCallback(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract extraCallback()I
.end method

.method public final extraCallback(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-static {p2}, Lcom/google/android/gms/internal/vision/zzhl;->warmup(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzhl;->onPostMessage(II)V

    return-void
.end method

.method public final extraCallback(IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    invoke-static {p2, p3}, Lcom/google/android/gms/internal/vision/zzhl;->asBinder(J)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/vision/zzhl;->onNavigationEvent(IJ)V

    return-void
.end method

.method public final extraCallback(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/vision/zzhl;->asBinder(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzhl;->onPostMessage(J)V

    return-void
.end method

.method public final extraCallback(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-byte p1, p1

    .line 21
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/zzhl;->onPostMessage(B)V

    return-void
.end method

.method public abstract extraCallback([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final onMessageChannelReady(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/zzhl;->ICustomTabsCallback(I)V

    return-void
.end method

.method public abstract onMessageChannelReady(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final onMessageChannelReady(ID)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/vision/zzhl;->onPostMessage(IJ)V

    return-void
.end method

.method public abstract onMessageChannelReady(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onMessageChannelReady(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method final onMessageChannelReady(Ljava/lang/String;Lo/getException;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 231
    sget-object v0, Lcom/google/android/gms/internal/vision/zzhl;->onNavigationEvent:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "com.google.protobuf.CodedOutputStream"

    const-string v3, "inefficientWriteStringNoTag"

    const-string v4, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 232
    sget-object p2, Lo/cancelAvailabilityErrorNotifications;->onPostMessage:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 233
    :try_start_0
    array-length p2, p1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/vision/zzhl;->onPostMessage(I)V

    const/4 p2, 0x0

    .line 234
    array-length v0, p1

    invoke-virtual {p0, p1, p2, v0}, Lo/createAdOverlay;->onPostMessage([BII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/internal/vision/zzhl$zza; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 238
    throw p1

    :catch_1
    move-exception p1

    .line 237
    new-instance p2, Lcom/google/android/gms/internal/vision/zzhl$zza;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/vision/zzhl$zza;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public abstract onMessageChannelReady(Lo/getStartServicePackage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final onNavigationEvent(D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzhl;->onNavigationEvent(J)V

    return-void
.end method

.method public final onNavigationEvent(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzhl;->warmup(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/zzhl;->onPostMessage(I)V

    return-void
.end method

.method public final onNavigationEvent(IF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzhl;->onMessageChannelReady(II)V

    return-void
.end method

.method public abstract onNavigationEvent(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onNavigationEvent(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onNavigationEvent(ILo/getMobileAdsSettingsManager;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onNavigationEvent(ILo/getStartServicePackage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onNavigationEvent(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onPostMessage(B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onPostMessage(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onPostMessage(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onPostMessage(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onPostMessage(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onPostMessage(ILo/getMobileAdsSettingsManager;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onPostMessage(ILo/getStartServicePackage;Lo/getService;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onPostMessage(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onPostMessage(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onPostMessage(Lo/getMobileAdsSettingsManager;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
