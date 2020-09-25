.class final Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setRenderMode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic extraCallback:Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;


# direct methods
.method constructor <init>(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$6;->extraCallback:Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Lo/layoutChildLeft$extraCallback;Landroid/graphics/Rect;)Lo/setFrame;
    .locals 3

    .line 174
    new-instance v0, Lo/enableOrDisableHardwareLayer;

    iget-object v1, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$6;->extraCallback:Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;

    .line 175
    invoke-static {v1}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->onMessageChannelReady(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;)Lo/setSelectedTextColor;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$6;->extraCallback:Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;

    .line 178
    invoke-static {v2}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->extraCallback(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;)Z

    move-result v2

    invoke-direct {v0, v1, p1, p2, v2}, Lo/enableOrDisableHardwareLayer;-><init>(Lo/setSelectedTextColor;Lo/layoutChildLeft$extraCallback;Landroid/graphics/Rect;Z)V

    return-object v0
.end method
