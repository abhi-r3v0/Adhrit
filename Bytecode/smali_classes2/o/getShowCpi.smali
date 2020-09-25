.class public Lo/getShowCpi;
.super Lo/getVariant_name;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lo/getVariant_name;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public final onMessageChannelReady(Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    return p1
.end method
