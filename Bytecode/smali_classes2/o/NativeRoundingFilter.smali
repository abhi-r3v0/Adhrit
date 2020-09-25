.class final Lo/NativeRoundingFilter;
.super Ljava/lang/Object;

# interfaces
.implements Lo/nativeAddRoundedCornersFilter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/nativeAddRoundedCornersFilter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/nativeCreateFromDirectByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/nativeCreateFromDirectByteBuffer<",
            "*>;"
        }
    .end annotation
.end field

.field private final extraCallback:Z

.field private final onNavigationEvent:Lo/NativeBlurFilter;

.field private final onPostMessage:Lo/shouldShowFaqCategoriesAsGrid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/shouldShowFaqCategoriesAsGrid<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lo/shouldShowFaqCategoriesAsGrid;Lo/nativeCreateFromDirectByteBuffer;Lo/NativeBlurFilter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/shouldShowFaqCategoriesAsGrid<",
            "**>;",
            "Lo/nativeCreateFromDirectByteBuffer<",
            "*>;",
            "Lo/NativeBlurFilter;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/NativeRoundingFilter;->onPostMessage:Lo/shouldShowFaqCategoriesAsGrid;

    invoke-virtual {p2, p3}, Lo/nativeCreateFromDirectByteBuffer;->onMessageChannelReady(Lo/NativeBlurFilter;)Z

    move-result p1

    iput-boolean p1, p0, Lo/NativeRoundingFilter;->extraCallback:Z

    iput-object p2, p0, Lo/NativeRoundingFilter;->ICustomTabsCallback:Lo/nativeCreateFromDirectByteBuffer;

    iput-object p3, p0, Lo/NativeRoundingFilter;->onNavigationEvent:Lo/NativeBlurFilter;

    return-void
.end method

.method static onMessageChannelReady(Lo/shouldShowFaqCategoriesAsGrid;Lo/nativeCreateFromDirectByteBuffer;Lo/NativeBlurFilter;)Lo/NativeRoundingFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/shouldShowFaqCategoriesAsGrid<",
            "**>;",
            "Lo/nativeCreateFromDirectByteBuffer<",
            "*>;",
            "Lo/NativeBlurFilter;",
            ")",
            "Lo/NativeRoundingFilter<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lo/NativeRoundingFilter;

    invoke-direct {v0, p0, p1, p2}, Lo/NativeRoundingFilter;-><init>(Lo/shouldShowFaqCategoriesAsGrid;Lo/nativeCreateFromDirectByteBuffer;Lo/NativeBlurFilter;)V

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lo/NativeRoundingFilter;->onPostMessage:Lo/shouldShowFaqCategoriesAsGrid;

    invoke-virtual {v0, p1}, Lo/shouldShowFaqCategoriesAsGrid;->onPostMessage(Ljava/lang/Object;)V

    iget-object v0, p0, Lo/NativeRoundingFilter;->ICustomTabsCallback:Lo/nativeCreateFromDirectByteBuffer;

    invoke-virtual {v0, p1}, Lo/nativeCreateFromDirectByteBuffer;->onPostMessage(Ljava/lang/Object;)V

    return-void
.end method

.method public final extraCallback(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lo/NativeRoundingFilter;->onPostMessage:Lo/shouldShowFaqCategoriesAsGrid;

    invoke-virtual {v0, p1}, Lo/shouldShowFaqCategoriesAsGrid;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lo/NativeRoundingFilter;->extraCallback:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/NativeRoundingFilter;->ICustomTabsCallback:Lo/nativeCreateFromDirectByteBuffer;

    invoke-virtual {v1, p1}, Lo/nativeCreateFromDirectByteBuffer;->onMessageChannelReady(Ljava/lang/Object;)Lo/nativeGetSizeInBytes;

    move-result-object p1

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p1}, Lo/nativeGetSizeInBytes;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final extraCallback()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lo/NativeRoundingFilter;->onNavigationEvent:Lo/NativeBlurFilter;

    invoke-interface {v0}, Lo/NativeBlurFilter;->ICustomTabsCallback$Stub()Lo/nativeIterativeBoxBlur;

    move-result-object v0

    invoke-interface {v0}, Lo/nativeIterativeBoxBlur;->asInterface()Lo/NativeBlurFilter;

    move-result-object v0

    return-object v0
.end method

.method public final extraCallback(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lo/NativeRoundingFilter;->onPostMessage:Lo/shouldShowFaqCategoriesAsGrid;

    invoke-static {v0, p1, p2}, Lo/Api18TraceUtils;->onMessageChannelReady(Lo/shouldShowFaqCategoriesAsGrid;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lo/NativeRoundingFilter;->extraCallback:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/NativeRoundingFilter;->ICustomTabsCallback:Lo/nativeCreateFromDirectByteBuffer;

    invoke-static {v0, p1, p2}, Lo/Api18TraceUtils;->onNavigationEvent(Lo/nativeCreateFromDirectByteBuffer;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onNavigationEvent(Ljava/lang/Object;Lo/linkifyWithPattern;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lo/linkifyWithPattern;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lo/NativeRoundingFilter;->ICustomTabsCallback:Lo/nativeCreateFromDirectByteBuffer;

    invoke-virtual {v0, p1}, Lo/nativeCreateFromDirectByteBuffer;->onMessageChannelReady(Ljava/lang/Object;)Lo/nativeGetSizeInBytes;

    move-result-object v0

    invoke-virtual {v0}, Lo/nativeGetSizeInBytes;->onPostMessage()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/SharedReference$NullReferenceException;

    invoke-interface {v2}, Lo/SharedReference$NullReferenceException;->onPostMessage()Lo/showConversations;

    move-result-object v3

    sget-object v4, Lo/showConversations;->ICustomTabsCallback$Stub:Lo/showConversations;

    if-ne v3, v4, :cond_1

    invoke-interface {v2}, Lo/SharedReference$NullReferenceException;->ICustomTabsCallback()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lo/SharedReference$NullReferenceException;->extraCallback()Z

    move-result v3

    if-nez v3, :cond_1

    instance-of v3, v1, Lo/setActualImageResource;

    invoke-interface {v2}, Lo/SharedReference$NullReferenceException;->onMessageChannelReady()I

    move-result v2

    if-eqz v3, :cond_0

    check-cast v1, Lo/setActualImageResource;

    invoke-virtual {v1}, Lo/setActualImageResource;->onNavigationEvent()Lo/AnimatedFactoryV2Impl;

    move-result-object v1

    invoke-virtual {v1}, Lo/BasePool$PoolSizeViolationException;->ICustomTabsCallback()Lo/setTopInset;

    move-result-object v1

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    :goto_1
    invoke-interface {p2, v2, v1}, Lo/linkifyWithPattern;->onPostMessage(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Found invalid MessageSet item."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v0, p0, Lo/NativeRoundingFilter;->onPostMessage:Lo/shouldShowFaqCategoriesAsGrid;

    invoke-virtual {v0, p1}, Lo/shouldShowFaqCategoriesAsGrid;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lo/shouldShowFaqCategoriesAsGrid;->onPostMessage(Ljava/lang/Object;Lo/linkifyWithPattern;)V

    return-void
.end method

.method public final onNavigationEvent(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lo/NativeRoundingFilter;->ICustomTabsCallback:Lo/nativeCreateFromDirectByteBuffer;

    invoke-virtual {v0, p1}, Lo/nativeCreateFromDirectByteBuffer;->onMessageChannelReady(Ljava/lang/Object;)Lo/nativeGetSizeInBytes;

    move-result-object p1

    invoke-virtual {p1}, Lo/nativeGetSizeInBytes;->asInterface()Z

    move-result p1

    return p1
.end method

.method public final onPostMessage(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lo/NativeRoundingFilter;->onPostMessage:Lo/shouldShowFaqCategoriesAsGrid;

    invoke-virtual {v0, p1}, Lo/shouldShowFaqCategoriesAsGrid;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/shouldShowFaqCategoriesAsGrid;->onNavigationEvent(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    iget-boolean v1, p0, Lo/NativeRoundingFilter;->extraCallback:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/NativeRoundingFilter;->ICustomTabsCallback:Lo/nativeCreateFromDirectByteBuffer;

    invoke-virtual {v1, p1}, Lo/nativeCreateFromDirectByteBuffer;->onMessageChannelReady(Ljava/lang/Object;)Lo/nativeGetSizeInBytes;

    move-result-object p1

    invoke-virtual {p1}, Lo/nativeGetSizeInBytes;->asBinder()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final onPostMessage(Ljava/lang/Object;[BIILo/setTabBarOffsetListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lo/setTabBarOffsetListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lo/RealtimeSinceBootClock;

    iget-object v0, p1, Lo/RealtimeSinceBootClock;->zzjp:Lo/Event$EventName;

    invoke-static {}, Lo/Event$EventName;->ICustomTabsCallback()Lo/Event$EventName;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lo/Event$EventName;->onPostMessage()Lo/Event$EventName;

    move-result-object v0

    iput-object v0, p1, Lo/RealtimeSinceBootClock;->zzjp:Lo/Event$EventName;

    :cond_0
    move-object p1, v0

    :goto_0
    if-ge p3, p4, :cond_8

    invoke-static {p2, p3, p5}, Lo/setCornerRadius;->ICustomTabsCallback([BILo/setTabBarOffsetListener;)I

    move-result v2

    iget v0, p5, Lo/setTabBarOffsetListener;->extraCallback:I

    const/16 p3, 0xb

    const/4 v1, 0x2

    if-eq v0, p3, :cond_2

    and-int/lit8 p3, v0, 0x7

    if-ne p3, v1, :cond_1

    move-object v1, p2

    move v3, p4

    move-object v4, p1

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lo/setCornerRadius;->onMessageChannelReady(I[BIILo/Event$EventName;Lo/setTabBarOffsetListener;)I

    move-result p3

    goto :goto_0

    :cond_1
    invoke-static {v0, p2, v2, p4, p5}, Lo/setCornerRadius;->onPostMessage(I[BIILo/setTabBarOffsetListener;)I

    move-result p3

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    const/4 v0, 0x0

    :goto_1
    if-ge v2, p4, :cond_6

    invoke-static {p2, v2, p5}, Lo/setCornerRadius;->ICustomTabsCallback([BILo/setTabBarOffsetListener;)I

    move-result v2

    iget v3, p5, Lo/setTabBarOffsetListener;->extraCallback:I

    ushr-int/lit8 v4, v3, 0x3

    and-int/lit8 v5, v3, 0x7

    if-eq v4, v1, :cond_4

    const/4 v6, 0x3

    if-eq v4, v6, :cond_3

    goto :goto_2

    :cond_3
    if-ne v5, v1, :cond_5

    invoke-static {p2, v2, p5}, Lo/setCornerRadius;->extraCallback([BILo/setTabBarOffsetListener;)I

    move-result v2

    iget-object v0, p5, Lo/setTabBarOffsetListener;->ICustomTabsCallback:Ljava/lang/Object;

    check-cast v0, Lo/setTopInset;

    goto :goto_1

    :cond_4
    if-nez v5, :cond_5

    invoke-static {p2, v2, p5}, Lo/setCornerRadius;->ICustomTabsCallback([BILo/setTabBarOffsetListener;)I

    move-result v2

    iget p3, p5, Lo/setTabBarOffsetListener;->extraCallback:I

    goto :goto_1

    :cond_5
    :goto_2
    const/16 v4, 0xc

    if-eq v3, v4, :cond_6

    invoke-static {v3, p2, v2, p4, p5}, Lo/setCornerRadius;->onPostMessage(I[BIILo/setTabBarOffsetListener;)I

    move-result v2

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_7

    shl-int/lit8 p3, p3, 0x3

    or-int/2addr p3, v1

    invoke-virtual {p1, p3, v0}, Lo/Event$EventName;->onNavigationEvent(ILjava/lang/Object;)V

    :cond_7
    move p3, v2

    goto :goto_0

    :cond_8
    if-ne p3, p4, :cond_9

    return-void

    :cond_9
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/zzco;->onNavigationEvent()Lcom/google/android/gms/internal/clearcut/zzco;

    move-result-object p1

    throw p1
.end method

.method public final onPostMessage(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lo/NativeRoundingFilter;->onPostMessage:Lo/shouldShowFaqCategoriesAsGrid;

    invoke-virtual {v0, p1}, Lo/shouldShowFaqCategoriesAsGrid;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lo/NativeRoundingFilter;->onPostMessage:Lo/shouldShowFaqCategoriesAsGrid;

    invoke-virtual {v1, p2}, Lo/shouldShowFaqCategoriesAsGrid;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Lo/NativeRoundingFilter;->extraCallback:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/NativeRoundingFilter;->ICustomTabsCallback:Lo/nativeCreateFromDirectByteBuffer;

    invoke-virtual {v0, p1}, Lo/nativeCreateFromDirectByteBuffer;->onMessageChannelReady(Ljava/lang/Object;)Lo/nativeGetSizeInBytes;

    move-result-object p1

    iget-object v0, p0, Lo/NativeRoundingFilter;->ICustomTabsCallback:Lo/nativeCreateFromDirectByteBuffer;

    invoke-virtual {v0, p2}, Lo/nativeCreateFromDirectByteBuffer;->onMessageChannelReady(Ljava/lang/Object;)Lo/nativeGetSizeInBytes;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/nativeGetSizeInBytes;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
