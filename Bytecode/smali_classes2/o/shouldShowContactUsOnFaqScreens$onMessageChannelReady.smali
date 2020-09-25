.class final Lo/shouldShowContactUsOnFaqScreens$onMessageChannelReady;
.super Lo/shouldShowContactUsOnFaqScreens$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/shouldShowContactUsOnFaqScreens;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onMessageChannelReady"
.end annotation


# direct methods
.method constructor <init>(Lsun/misc/Unsafe;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/shouldShowContactUsOnFaqScreens$ICustomTabsCallback;-><init>(Lsun/misc/Unsafe;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/Object;J)F
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lo/shouldShowContactUsOnFaqScreens$ICustomTabsCallback;->extraCallback(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    return p1
.end method

.method public final ICustomTabsCallback(Ljava/lang/Object;JD)V
    .locals 6

    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lo/shouldShowContactUsOnFaqScreens$ICustomTabsCallback;->ICustomTabsCallback(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public final onMessageChannelReady(JB)V
    .locals 2

    const-wide/16 v0, -0x1

    and-long/2addr p1, v0

    long-to-int p2, p1

    invoke-static {p2, p3}, Llibcore/io/Memory;->pokeByte(IB)V

    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/Object;JF)V
    .locals 0

    invoke-static {p4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lo/shouldShowContactUsOnFaqScreens$ICustomTabsCallback;->onNavigationEvent(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final onMessageChannelReady([BJJJ)V
    .locals 2

    const-wide/16 v0, -0x1

    and-long/2addr p4, v0

    long-to-int p5, p4

    long-to-int p3, p2

    long-to-int p2, p6

    invoke-static {p5, p1, p3, p2}, Llibcore/io/Memory;->pokeByteArray(I[BII)V

    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/Object;J)Z
    .locals 1

    invoke-static {}, Lo/shouldShowContactUsOnFaqScreens;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Lo/shouldShowContactUsOnFaqScreens;->asInterface(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    :cond_0
    invoke-static {p1, p2, p3}, Lo/shouldShowContactUsOnFaqScreens;->onRelationshipValidationResult(Ljava/lang/Object;J)Z

    move-result p1

    return p1
.end method

.method public final onNavigationEvent(Ljava/lang/Object;J)B
    .locals 1

    invoke-static {}, Lo/shouldShowContactUsOnFaqScreens;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Lo/shouldShowContactUsOnFaqScreens;->onTransact(Ljava/lang/Object;J)B

    move-result p1

    return p1

    :cond_0
    invoke-static {p1, p2, p3}, Lo/shouldShowContactUsOnFaqScreens;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)B

    move-result p1

    return p1
.end method

.method public final onPostMessage(Ljava/lang/Object;J)D
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lo/shouldShowContactUsOnFaqScreens$ICustomTabsCallback;->onRelationshipValidationResult(Ljava/lang/Object;J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p1

    return-wide p1
.end method

.method public final onPostMessage(Ljava/lang/Object;JB)V
    .locals 1

    invoke-static {}, Lo/shouldShowContactUsOnFaqScreens;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3, p4}, Lo/shouldShowContactUsOnFaqScreens;->onPostMessage(Ljava/lang/Object;JB)V

    return-void

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lo/shouldShowContactUsOnFaqScreens;->extraCallback(Ljava/lang/Object;JB)V

    return-void
.end method

.method public final onPostMessage(Ljava/lang/Object;JZ)V
    .locals 1

    invoke-static {}, Lo/shouldShowContactUsOnFaqScreens;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3, p4}, Lo/shouldShowContactUsOnFaqScreens;->onNavigationEvent(Ljava/lang/Object;JZ)V

    return-void

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lo/shouldShowContactUsOnFaqScreens;->onMessageChannelReady(Ljava/lang/Object;JZ)V

    return-void
.end method
