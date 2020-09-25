.class final Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/isEncrypt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->onPostMessage(Landroid/graphics/Bitmap$Config;)Lo/isEncrypt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Landroid/graphics/Bitmap$Config;

.field private synthetic onNavigationEvent:Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;


# direct methods
.method constructor <init>(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;Landroid/graphics/Bitmap$Config;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$5;->onNavigationEvent:Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;

    iput-object p2, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$5;->ICustomTabsCallback:Landroid/graphics/Bitmap$Config;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Lo/getCardBackgroundColor;ILo/AFKeystoreWrapper;Lo/AFDeepLinkManager;)Lo/convertToJsonObject;
    .locals 0

    .line 103
    iget-object p2, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$5;->onNavigationEvent:Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;

    invoke-static {p2}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->onNavigationEvent(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;)Lo/disableExtraScaleModeInFitXY;

    move-result-object p2

    iget-object p3, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$5;->ICustomTabsCallback:Landroid/graphics/Bitmap$Config;

    invoke-interface {p2, p1, p4, p3}, Lo/disableExtraScaleModeInFitXY;->ICustomTabsCallback(Lo/getCardBackgroundColor;Lo/AFDeepLinkManager;Landroid/graphics/Bitmap$Config;)Lo/convertToJsonObject;

    move-result-object p1

    return-object p1
.end method
