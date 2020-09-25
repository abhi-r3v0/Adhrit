.class final Lo/MiddleOutStrategy$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MiddleOutStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Landroid/graphics/drawable/GradientDrawable;

.field private synthetic onMessageChannelReady:I

.field private synthetic onNavigationEvent:Lo/defaultSessionData;


# direct methods
.method constructor <init>(ILandroid/graphics/drawable/GradientDrawable;Lo/defaultSessionData;)V
    .locals 0

    .line 155
    iput p1, p0, Lo/MiddleOutStrategy$5;->onMessageChannelReady:I

    iput-object p2, p0, Lo/MiddleOutStrategy$5;->ICustomTabsCallback:Landroid/graphics/drawable/GradientDrawable;

    iput-object p3, p0, Lo/MiddleOutStrategy$5;->onNavigationEvent:Lo/defaultSessionData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 159
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 160
    iget p1, p0, Lo/MiddleOutStrategy$5;->onMessageChannelReady:I

    .line 161
    iget-object p2, p0, Lo/MiddleOutStrategy$5;->ICustomTabsCallback:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_0

    .line 163
    :cond_0
    iget-object p1, p0, Lo/MiddleOutStrategy$5;->ICustomTabsCallback:Landroid/graphics/drawable/GradientDrawable;

    iget-object p2, p0, Lo/MiddleOutStrategy$5;->onNavigationEvent:Lo/defaultSessionData;

    .line 1054
    iget p2, p2, Lo/defaultSessionData;->ICustomTabsCallback:I

    .line 163
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
