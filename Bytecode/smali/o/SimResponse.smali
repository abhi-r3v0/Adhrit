.class public final Lo/SimResponse;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ICustomTabsCallback:Lo/SimResponse;


# instance fields
.field public final ICustomTabsCallback$Stub:Landroid/graphics/Typeface;

.field public final asInterface:I

.field public final extraCallback:I

.field public final onMessageChannelReady:I

.field public final onNavigationEvent:I

.field public final onPostMessage:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 78
    new-instance v7, Lo/SimResponse;

    const/4 v1, -0x1

    const/high16 v2, -0x1000000

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lo/SimResponse;-><init>(IIIIILandroid/graphics/Typeface;)V

    sput-object v7, Lo/SimResponse;->ICustomTabsCallback:Lo/SimResponse;

    return-void
.end method

.method public constructor <init>(IIIIILandroid/graphics/Typeface;)V
    .locals 0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput p1, p0, Lo/SimResponse;->onNavigationEvent:I

    .line 147
    iput p2, p0, Lo/SimResponse;->extraCallback:I

    .line 148
    iput p3, p0, Lo/SimResponse;->onMessageChannelReady:I

    .line 149
    iput p4, p0, Lo/SimResponse;->onPostMessage:I

    .line 150
    iput p5, p0, Lo/SimResponse;->asInterface:I

    .line 151
    iput-object p6, p0, Lo/SimResponse;->ICustomTabsCallback$Stub:Landroid/graphics/Typeface;

    return-void
.end method

.method public static onMessageChannelReady(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lo/SimResponse;
    .locals 2

    .line 127
    sget v0, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 128
    invoke-static {p0}, Lo/SimResponse;->onPostMessage(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lo/SimResponse;

    move-result-object p0

    return-object p0

    .line 132
    :cond_0
    invoke-static {p0}, Lo/SimResponse;->onNavigationEvent(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lo/SimResponse;

    move-result-object p0

    return-object p0
.end method

.method private static onNavigationEvent(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lo/SimResponse;
    .locals 8

    .line 158
    new-instance v7, Lo/SimResponse;

    iget v1, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    iget v2, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    iget v4, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    iget v5, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    .line 160
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    const/4 v3, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lo/SimResponse;-><init>(IIIIILandroid/graphics/Typeface;)V

    return-object v7
.end method

.method private static onPostMessage(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lo/SimResponse;
    .locals 8

    .line 167
    new-instance v7, Lo/SimResponse;

    .line 168
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasForegroundColor()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    goto :goto_0

    :cond_0
    sget-object v0, Lo/SimResponse;->ICustomTabsCallback:Lo/SimResponse;

    iget v0, v0, Lo/SimResponse;->onNavigationEvent:I

    :goto_0
    move v1, v0

    .line 169
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasBackgroundColor()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    goto :goto_1

    :cond_1
    sget-object v0, Lo/SimResponse;->ICustomTabsCallback:Lo/SimResponse;

    iget v0, v0, Lo/SimResponse;->extraCallback:I

    :goto_1
    move v2, v0

    .line 170
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasWindowColor()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    goto :goto_2

    :cond_2
    sget-object v0, Lo/SimResponse;->ICustomTabsCallback:Lo/SimResponse;

    iget v0, v0, Lo/SimResponse;->onMessageChannelReady:I

    :goto_2
    move v3, v0

    .line 171
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeType()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    goto :goto_3

    :cond_3
    sget-object v0, Lo/SimResponse;->ICustomTabsCallback:Lo/SimResponse;

    iget v0, v0, Lo/SimResponse;->onPostMessage:I

    :goto_3
    move v4, v0

    .line 172
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeColor()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    goto :goto_4

    :cond_4
    sget-object v0, Lo/SimResponse;->ICustomTabsCallback:Lo/SimResponse;

    iget v0, v0, Lo/SimResponse;->asInterface:I

    :goto_4
    move v5, v0

    .line 173
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lo/SimResponse;-><init>(IIIIILandroid/graphics/Typeface;)V

    return-object v7
.end method
