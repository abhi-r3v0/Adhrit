.class public abstract Lo/playFromUri;
.super Lo/stop;
.source ""


# instance fields
.field private ICustomTabsCallback:I

.field private asInterface:Landroid/view/LayoutInflater;

.field private onPostMessage:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 82
    invoke-direct {p0, p1, v0, v1}, Lo/stop;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 83
    iput p2, p0, Lo/playFromUri;->ICustomTabsCallback:I

    iput p2, p0, Lo/playFromUri;->onPostMessage:I

    const-string p2, "layout_inflater"

    .line 84
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lo/playFromUri;->asInterface:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 117
    iget-object p1, p0, Lo/playFromUri;->asInterface:Landroid/view/LayoutInflater;

    iget p2, p0, Lo/playFromUri;->ICustomTabsCallback:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public extraCallback(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 112
    iget-object p1, p0, Lo/playFromUri;->asInterface:Landroid/view/LayoutInflater;

    iget p2, p0, Lo/playFromUri;->onPostMessage:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
