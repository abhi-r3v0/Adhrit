.class public abstract Lcom/google/android/gms/internal/clearcut/zzbn;
.super Lo/setParentFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/clearcut/zzbn$onPostMessage;,
        Lcom/google/android/gms/internal/clearcut/zzbn$onMessageChannelReady;,
        Lcom/google/android/gms/internal/clearcut/zzbn$extraCallback;,
        Lcom/google/android/gms/internal/clearcut/zzbn$ICustomTabsCallback;,
        Lcom/google/android/gms/internal/clearcut/zzbn$zzc;
    }
.end annotation


# static fields
.field private static final onMessageChannelReady:Z

.field private static final onNavigationEvent:Ljava/util/logging/Logger;


# instance fields
.field public ICustomTabsCallback:Lo/nativeDispose;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/clearcut/zzbn;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/clearcut/zzbn;->onNavigationEvent:Ljava/util/logging/Logger;

    invoke-static {}, Lo/shouldShowContactUsOnFaqScreens;->onPostMessage()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/internal/clearcut/zzbn;->onMessageChannelReady:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lo/setParentFragment;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/GifImage;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/clearcut/zzbn;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback(D)I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public static ICustomTabsCallback(I)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/zzbn;->onTransact(I)I

    move-result p0

    return p0
.end method

.method public static ICustomTabsCallback(IJ)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/zzbn;->ICustomTabsCallback(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/clearcut/zzbn;->extraCallback(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static ICustomTabsCallback(ILjava/lang/String;)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/zzbn;->ICustomTabsCallback(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/clearcut/zzbn;->ICustomTabsCallback(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static ICustomTabsCallback(ILo/NativeBlurFilter;Lo/nativeAddRoundedCornersFilter;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/zzbn;->ICustomTabsCallback(I)I

    move-result p0

    shl-int/lit8 p0, p0, 0x1

    check-cast p1, Lo/getTargetId;

    invoke-virtual {p1}, Lo/getTargetId;->onNavigationEvent()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p2, p1}, Lo/nativeAddRoundedCornersFilter;->onPostMessage(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Lo/getTargetId;->onNavigationEvent(I)V

    :cond_0
    add-int/2addr p0, v0

    return p0
.end method

.method public static ICustomTabsCallback(ILo/setTopInset;)I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/zzbn;->ICustomTabsCallback(I)I

    move-result p0

    invoke-virtual {p1}, Lo/setTopInset;->onPostMessage()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/clearcut/zzbn;->onTransact(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr p0, v0

    return p0
.end method

.method public static ICustomTabsCallback(Ljava/lang/String;)I
    .locals 1

    :try_start_0
    invoke-static {p0}, Lo/shouldShowContactUsOnAppBar;->ICustomTabsCallback(Ljava/lang/CharSequence;)I

    move-result p0
    :try_end_0
    .catch Lo/showContactUsOnFaqNotHelpful; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lo/ExceptionWithNoStacktrace;->ICustomTabsCallback:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length p0, p0

    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/zzbn;->onTransact(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static ICustomTabsCallback(Lo/NativeBlurFilter;Lo/nativeAddRoundedCornersFilter;)I
    .locals 2

    check-cast p0, Lo/getTargetId;

    invoke-virtual {p0}, Lo/getTargetId;->onNavigationEvent()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p1, p0}, Lo/nativeAddRoundedCornersFilter;->onPostMessage(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lo/getTargetId;->onNavigationEvent(I)V

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/clearcut/zzbn;->onTransact(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public static ICustomTabsCallback$Stub(I)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/zzbn;->getInterfaceDescriptor(I)I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/zzbn;->onTransact(I)I

    move-result p0

    return p0
.end method

.method public static ICustomTabsCallback$Stub(II)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/zzbn;->ICustomTabsCallback(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/clearcut/zzbn;->asBinder(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static ICustomTabsCallback$Stub(J)I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public static ICustomTabsService(I)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/zzbn;->asBinder(I)I

    move-result p0

    return p0
.end method

.method public static asBinder(I)I
    .locals 0

    if-ltz p0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/zzbn;->onTransact(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0
.end method

.method public static asBinder(II)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/zzbn;->ICustomTabsCallback(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/clearcut/zzbn;->onTransact(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static asBinder(IJ)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/zzbn;->ICustomTabsCallback(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/clearcut/zzbn;->asInterface(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/clearcut/zzbn;->extraCallback(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static asBinder(J)I
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/clearcut/zzbn;->asInterface(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/clearcut/zzbn;->extraCallback(J)I

    move-result p0

    return p0
.end method

.method public static asInterface(I)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public static asInterface(II)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/zzbn;->ICustomTabsCallback(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/clearcut/zzbn;->getInterfaceDescriptor(I)I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/clearcut/zzbn;->onTransact(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static asInterface(IJ)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/zzbn;->ICustomTabsCallback(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method private static asInterface(J)J
    .locals 3

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static extraCallback(F)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public static extraCallback(ILo/BasePool$PoolSizeViolationException;)I
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/clearcut/zzbn;->ICustomTabsCallback(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    const/4 v1, 0x2

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/clearcut/zzbn;->asBinder(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/clearcut/zzbn;->onNavigationEvent(ILo/BasePool$PoolSizeViolationException;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static extraCallback(ILo/NativeBlurFilter;)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/zzbn;->ICustomTabsCallback(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/clearcut/zzbn;->onPostMessage(Lo/NativeBlurFilter;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static extraCallback(IZ)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/zzbn;->ICustomTabsCallback(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static extraCallback(J)I
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

.method public static extraCallback(Lo/NativeBlurFilter;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-interface {p0}, Lo/NativeBlurFilter;->onPostMessage()I

    move-result p0

    return p0
.end method

.method private static getInterfaceDescriptor(I)I
    .locals 1

    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    return p0
.end method

.method public static newSession(II)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/zzbn;->ICustomTabsCallback(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/clearcut/zzbn;->asBinder(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static onMessageChannelReady(ILo/NativeBlurFilter;Lo/nativeAddRoundedCornersFilter;)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/zzbn;->ICustomTabsCallback(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/clearcut/zzbn;->ICustomTabsCallback(Lo/NativeBlurFilter;Lo/nativeAddRoundedCornersFilter;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static onMessageChannelReady(ILo/setTopInset;)I
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/clearcut/zzbn;->ICustomTabsCallback(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    const/4 v1, 0x2

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/clearcut/zzbn;->asBinder(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/clearcut/zzbn;->ICustomTabsCallback(ILo/setTopInset;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static onMessageChannelReady(Lo/BasePool$PoolSizeViolationException;)I
    .locals 1

    invoke-virtual {p0}, Lo/BasePool$PoolSizeViolationException;->onPostMessage()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/zzbn;->onTransact(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static onMessageChannelReady(Lo/setTopInset;)I
    .locals 1

    invoke-virtual {p0}, Lo/setTopInset;->onPostMessage()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/zzbn;->onTransact(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static onMessageChannelReady([B)I
    .locals 1

    array-length p0, p0

    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/zzbn;->onTransact(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static onNavigationEvent(IF)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/zzbn;->ICustomTabsCallback(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static onNavigationEvent(ILo/BasePool$PoolSizeViolationException;)I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/zzbn;->ICustomTabsCallback(I)I

    move-result p0

    invoke-virtual {p1}, Lo/BasePool$PoolSizeViolationException;->onPostMessage()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/clearcut/zzbn;->onTransact(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr p0, v0

    return p0
.end method

.method public static onNavigationEvent(J)I
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/clearcut/zzbn;->extraCallback(J)I

    move-result p0

    return p0
.end method

.method public static onNavigationEvent([B)Lcom/google/android/gms/internal/clearcut/zzbn;
    .locals 3

    array-length v0, p0

    new-instance v1, Lcom/google/android/gms/internal/clearcut/zzbn$ICustomTabsCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/gms/internal/clearcut/zzbn$ICustomTabsCallback;-><init>([BII)V

    return-object v1
.end method

.method static synthetic onNavigationEvent()Z
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/clearcut/zzbn;->onMessageChannelReady:Z

    return v0
.end method

.method public static onPostMessage(ID)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/zzbn;->ICustomTabsCallback(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static onPostMessage(IJ)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/zzbn;->ICustomTabsCallback(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/clearcut/zzbn;->extraCallback(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static onPostMessage(ILo/NativeBlurFilter;)I
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/clearcut/zzbn;->ICustomTabsCallback(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    const/4 v1, 0x2

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/clearcut/zzbn;->asBinder(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/clearcut/zzbn;->extraCallback(ILo/NativeBlurFilter;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static onPostMessage(Lo/NativeBlurFilter;)I
    .locals 1

    invoke-interface {p0}, Lo/NativeBlurFilter;->onPostMessage()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/zzbn;->onTransact(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static onPostMessage(Z)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static onPostMessage(Ljava/nio/ByteBuffer;)Lcom/google/android/gms/internal/clearcut/zzbn;
    .locals 1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/clearcut/zzbn$extraCallback;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/clearcut/zzbn$extraCallback;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lo/shouldShowContactUsOnFaqScreens;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/clearcut/zzbn$onPostMessage;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/clearcut/zzbn$onPostMessage;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/clearcut/zzbn$onMessageChannelReady;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/clearcut/zzbn$onMessageChannelReady;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ByteBuffer is read-only"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static onRelationshipValidationResult(I)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public static onRelationshipValidationResult(II)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/zzbn;->ICustomTabsCallback(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static onRelationshipValidationResult(IJ)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/zzbn;->ICustomTabsCallback(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static onTransact(I)I
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

.method public static onTransact(II)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/zzbn;->ICustomTabsCallback(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static onTransact(J)I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public static warmup(I)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/zzbn;->onTransact(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final ICustomTabsCallback(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/clearcut/zzbn;->onNavigationEvent(I)V

    return-void
.end method

.method public final ICustomTabsCallback(IF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/clearcut/zzbn;->extraCallback(II)V

    return-void
.end method

.method public final ICustomTabsCallback(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lcom/google/android/gms/internal/clearcut/zzbn;->getInterfaceDescriptor(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/clearcut/zzbn;->onNavigationEvent(II)V

    return-void
.end method

.method public abstract ICustomTabsCallback(ILo/NativeBlurFilter;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract ICustomTabsCallback(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final ICustomTabsCallback(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/clearcut/zzbn;->onNavigationEvent(B)V

    return-void
.end method

.method public abstract extraCallback()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract extraCallback(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract extraCallback(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final extraCallback(IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2, p3}, Lcom/google/android/gms/internal/clearcut/zzbn;->asInterface(J)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/clearcut/zzbn;->onMessageChannelReady(IJ)V

    return-void
.end method

.method public abstract extraCallback(ILo/setTopInset;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onMessageChannelReady()I
.end method

.method public final onMessageChannelReady(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/clearcut/zzbn;->getInterfaceDescriptor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/clearcut/zzbn;->onPostMessage(I)V

    return-void
.end method

.method public abstract onMessageChannelReady(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onMessageChannelReady(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onMessageChannelReady(ILjava/lang/String;)V
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

.method public abstract onMessageChannelReady(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method final onMessageChannelReady(Ljava/lang/String;Lo/showContactUsOnFaqNotHelpful;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/clearcut/zzbn;->onNavigationEvent:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "com.google.protobuf.CodedOutputStream"

    const-string v3, "inefficientWriteStringNoTag"

    const-string v4, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p2, Lo/ExceptionWithNoStacktrace;->ICustomTabsCallback:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    :try_start_0
    array-length p2, p1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/clearcut/zzbn;->onPostMessage(I)V

    const/4 p2, 0x0

    array-length v0, p1

    invoke-virtual {p0, p1, p2, v0}, Lo/setParentFragment;->onNavigationEvent([BII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/internal/clearcut/zzbn$zzc; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    throw p1

    :catch_1
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/clearcut/zzbn$zzc;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/clearcut/zzbn$zzc;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public abstract onMessageChannelReady(Lo/NativeBlurFilter;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onMessageChannelReady([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onNavigationEvent(B)V
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

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/clearcut/zzbn;->onMessageChannelReady(J)V

    return-void
.end method

.method public abstract onNavigationEvent(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final onNavigationEvent(ID)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/clearcut/zzbn;->onNavigationEvent(IJ)V

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

.method public abstract onNavigationEvent(ILo/NativeBlurFilter;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onNavigationEvent(ILo/NativeBlurFilter;Lo/nativeAddRoundedCornersFilter;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onNavigationEvent(Ljava/lang/String;)V
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

.method public abstract onPostMessage(ILo/setTopInset;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final onPostMessage(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/clearcut/zzbn;->asInterface(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/clearcut/zzbn;->ICustomTabsCallback(J)V

    return-void
.end method

.method abstract onPostMessage(Lo/NativeBlurFilter;Lo/nativeAddRoundedCornersFilter;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onPostMessage(Lo/setTopInset;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onPostMessage([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
