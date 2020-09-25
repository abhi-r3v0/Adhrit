.class public final Lo/setThreshold$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setThreshold;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/animation/ValueAnimator;",
        "kotlin.jvm.PlatformType",
        "onAnimationUpdate",
        "com/dreamplug/fabrik/ui/main/menu/NavigationMenu$hide$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public ICustomTabsCallback:Ljava/lang/String;

.field public ICustomTabsCallback$Stub:Z

.field private final asInterface:Landroid/view/View;

.field public final extraCallback:Landroid/view/View;

.field public onMessageChannelReady:Z

.field public onNavigationEvent:Z

.field public final onPostMessage:Lo/createFullSpanItemFromEnd;

.field public final onTransact:Lo/onChildrenLoaded;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/onChildrenLoaded;)V
    .locals 2

    const-string v0, "constraintLayout"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1018
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setThreshold$onPostMessage;->onTransact:Lo/onChildrenLoaded;

    .line 1021
    check-cast p1, Landroid/view/View;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->menuBg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lo/setThreshold$onPostMessage;->extraCallback:Landroid/view/View;

    .line 1022
    iget-object p1, p0, Lo/setThreshold$onPostMessage;->onTransact:Lo/onChildrenLoaded;

    check-cast p1, Landroid/view/View;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->menuText:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/setThreshold$onPostMessage;->onPostMessage:Lo/createFullSpanItemFromEnd;

    .line 1023
    iget-object p1, p0, Lo/setThreshold$onPostMessage;->onTransact:Lo/onChildrenLoaded;

    check-cast p1, Landroid/view/View;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->menuBgShadow:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lo/setThreshold$onPostMessage;->asInterface:Landroid/view/View;

    const-string v0, "menuBgShadow"

    .line 1026
    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lo/hasAnyOfTheFlags;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/hasAnyOfTheFlags;-><init>(B)V

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    .line 1028
    iput-boolean p1, p0, Lo/setThreshold$onPostMessage;->onMessageChannelReady:Z

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 2018
    iget-object v0, p0, Lo/setThreshold$onPostMessage;->onTransact:Lo/onChildrenLoaded;

    .line 1067
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const-string v2, "it"

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    mul-float v1, v1, p1

    invoke-virtual {v0, v1}, Lo/onChildrenLoaded;->setTranslationX(F)V

    return-void

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
