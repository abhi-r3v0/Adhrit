.class public Lo/BasePool$PoolSizeViolationException;
.super Ljava/lang/Object;


# static fields
.field private static final ICustomTabsCallback:Lo/nativeCreateFromNativeMemory;


# instance fields
.field private volatile extraCallback:Lo/NativeBlurFilter;

.field private onMessageChannelReady:Lo/setTopInset;

.field private volatile onNavigationEvent:Lo/setTopInset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lo/nativeCreateFromNativeMemory;->onNavigationEvent()Lo/nativeCreateFromNativeMemory;

    move-result-object v0

    sput-object v0, Lo/BasePool$PoolSizeViolationException;->ICustomTabsCallback:Lo/nativeCreateFromNativeMemory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final onNavigationEvent(Lo/NativeBlurFilter;)Lo/NativeBlurFilter;
    .locals 1

    iget-object v0, p0, Lo/BasePool$PoolSizeViolationException;->extraCallback:Lo/NativeBlurFilter;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lo/BasePool$PoolSizeViolationException;->extraCallback:Lo/NativeBlurFilter;

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_0
    :try_start_1
    iput-object p1, p0, Lo/BasePool$PoolSizeViolationException;->extraCallback:Lo/NativeBlurFilter;

    sget-object v0, Lo/setTopInset;->extraCallback:Lo/setTopInset;

    iput-object v0, p0, Lo/BasePool$PoolSizeViolationException;->onNavigationEvent:Lo/setTopInset;
    :try_end_1
    .catch Lcom/google/android/gms/internal/clearcut/zzco; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    iput-object p1, p0, Lo/BasePool$PoolSizeViolationException;->extraCallback:Lo/NativeBlurFilter;

    sget-object p1, Lo/setTopInset;->extraCallback:Lo/setTopInset;

    iput-object p1, p0, Lo/BasePool$PoolSizeViolationException;->onNavigationEvent:Lo/setTopInset;

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_1
    :goto_1
    iget-object p1, p0, Lo/BasePool$PoolSizeViolationException;->extraCallback:Lo/NativeBlurFilter;

    return-object p1
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/setTopInset;
    .locals 1

    iget-object v0, p0, Lo/BasePool$PoolSizeViolationException;->onNavigationEvent:Lo/setTopInset;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/BasePool$PoolSizeViolationException;->onNavigationEvent:Lo/setTopInset;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lo/BasePool$PoolSizeViolationException;->onNavigationEvent:Lo/setTopInset;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/BasePool$PoolSizeViolationException;->onNavigationEvent:Lo/setTopInset;

    monitor-exit p0

    return-object v0

    :cond_1
    iget-object v0, p0, Lo/BasePool$PoolSizeViolationException;->extraCallback:Lo/NativeBlurFilter;

    if-nez v0, :cond_2

    sget-object v0, Lo/setTopInset;->extraCallback:Lo/setTopInset;

    :goto_0
    iput-object v0, p0, Lo/BasePool$PoolSizeViolationException;->onNavigationEvent:Lo/setTopInset;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lo/BasePool$PoolSizeViolationException;->extraCallback:Lo/NativeBlurFilter;

    invoke-interface {v0}, Lo/NativeBlurFilter;->onMessageChannelReady()Lo/setTopInset;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lo/BasePool$PoolSizeViolationException;->onNavigationEvent:Lo/setTopInset;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lo/BasePool$PoolSizeViolationException;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lo/BasePool$PoolSizeViolationException;

    iget-object v0, p0, Lo/BasePool$PoolSizeViolationException;->extraCallback:Lo/NativeBlurFilter;

    iget-object v1, p1, Lo/BasePool$PoolSizeViolationException;->extraCallback:Lo/NativeBlurFilter;

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lo/BasePool$PoolSizeViolationException;->ICustomTabsCallback()Lo/setTopInset;

    move-result-object v0

    invoke-virtual {p1}, Lo/BasePool$PoolSizeViolationException;->ICustomTabsCallback()Lo/setTopInset;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/setTopInset;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lo/NativeBlurFilter;->ICustomTabsCallback$Stub$Proxy()Lo/NativeBlurFilter;

    move-result-object v1

    invoke-direct {p1, v1}, Lo/BasePool$PoolSizeViolationException;->onNavigationEvent(Lo/NativeBlurFilter;)Lo/NativeBlurFilter;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    invoke-interface {v1}, Lo/NativeBlurFilter;->ICustomTabsCallback$Stub$Proxy()Lo/NativeBlurFilter;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/BasePool$PoolSizeViolationException;->onNavigationEvent(Lo/NativeBlurFilter;)Lo/NativeBlurFilter;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onPostMessage()I
    .locals 1

    iget-object v0, p0, Lo/BasePool$PoolSizeViolationException;->onNavigationEvent:Lo/setTopInset;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/BasePool$PoolSizeViolationException;->onNavigationEvent:Lo/setTopInset;

    invoke-virtual {v0}, Lo/setTopInset;->onPostMessage()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lo/BasePool$PoolSizeViolationException;->extraCallback:Lo/NativeBlurFilter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/BasePool$PoolSizeViolationException;->extraCallback:Lo/NativeBlurFilter;

    invoke-interface {v0}, Lo/NativeBlurFilter;->onPostMessage()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final onPostMessage(Lo/NativeBlurFilter;)Lo/NativeBlurFilter;
    .locals 2

    iget-object v0, p0, Lo/BasePool$PoolSizeViolationException;->extraCallback:Lo/NativeBlurFilter;

    const/4 v1, 0x0

    iput-object v1, p0, Lo/BasePool$PoolSizeViolationException;->onMessageChannelReady:Lo/setTopInset;

    iput-object v1, p0, Lo/BasePool$PoolSizeViolationException;->onNavigationEvent:Lo/setTopInset;

    iput-object p1, p0, Lo/BasePool$PoolSizeViolationException;->extraCallback:Lo/NativeBlurFilter;

    return-object v0
.end method
