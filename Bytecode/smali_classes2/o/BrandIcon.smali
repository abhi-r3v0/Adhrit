.class final Lo/BrandIcon;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field extraCallback:Z

.field private onMessageChannelReady:Lo/getTemplateIdentifierName;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lo/getTemplateIdentifierName;

    invoke-direct {v0, p1, p2}, Lo/getTemplateIdentifierName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lo/BrandIcon;->onMessageChannelReady:Lo/getTemplateIdentifierName;

    invoke-virtual {v0, p3}, Lo/getTemplateIdentifierName;->onNavigationEvent(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lo/BrandIcon;->extraCallback:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/BrandIcon;->onMessageChannelReady:Lo/getTemplateIdentifierName;

    invoke-virtual {v0, p1}, Lo/getTemplateIdentifierName;->onNavigationEvent(Landroid/view/MotionEvent;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
