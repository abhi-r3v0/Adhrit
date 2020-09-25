.class public final Lo/log;
.super Ljava/lang/Object;
.source ""


# instance fields
.field ICustomTabsCallback:Lo/removeListListener$onPostMessage;

.field extraCallback:Landroid/view/View;

.field onMessageChannelReady:Landroid/widget/TextView;

.field onNavigationEvent:Landroid/widget/TextView;

.field private onPostMessage:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lo/log;->onPostMessage:Landroid/content/Context;

    const-string v0, "layout_inflater"

    .line 1030
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const v0, 0x7f0e01ba

    const/4 v1, 0x0

    .line 1031
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lo/log;->extraCallback:Landroid/view/View;

    const v0, 0x7f0b025e

    .line 1033
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/log;->onNavigationEvent:Landroid/widget/TextView;

    .line 1034
    iget-object p1, p0, Lo/log;->extraCallback:Landroid/view/View;

    const v0, 0x7f0b0086

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/log;->onMessageChannelReady:Landroid/widget/TextView;

    .line 1035
    iget-object p1, p0, Lo/log;->extraCallback:Landroid/view/View;

    const v0, 0x7f0b0230

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lo/addListListener;

    invoke-direct {v0, p0}, Lo/addListListener;-><init>(Lo/log;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
