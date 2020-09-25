.class final Lo/next;
.super Landroid/widget/Filter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/next$extraCallback;
    }
.end annotation


# instance fields
.field private onNavigationEvent:Lo/next$extraCallback;


# direct methods
.method constructor <init>(Lo/next$extraCallback;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 40
    iput-object p1, p0, Lo/next;->onNavigationEvent:Lo/next$extraCallback;

    return-void
.end method


# virtual methods
.method public final convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    .line 45
    iget-object v0, p0, Lo/next;->onNavigationEvent:Lo/next$extraCallback;

    check-cast p1, Landroid/database/Cursor;

    invoke-interface {v0, p1}, Lo/next$extraCallback;->extraCallback(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method protected final performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 2

    .line 50
    iget-object v0, p0, Lo/next;->onNavigationEvent:Lo/next$extraCallback;

    invoke-interface {v0, p1}, Lo/next$extraCallback;->onMessageChannelReady(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object p1

    .line 52
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    if-eqz p1, :cond_0

    .line 54
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 55
    iput-object p1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 57
    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    const/4 p1, 0x0

    .line 58
    iput-object p1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method protected final publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 1

    .line 65
    iget-object p1, p0, Lo/next;->onNavigationEvent:Lo/next$extraCallback;

    invoke-interface {p1}, Lo/next$extraCallback;->onPostMessage()Landroid/database/Cursor;

    move-result-object p1

    .line 67
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eq v0, p1, :cond_0

    .line 68
    iget-object p1, p0, Lo/next;->onNavigationEvent:Lo/next$extraCallback;

    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p2, Landroid/database/Cursor;

    invoke-interface {p1, p2}, Lo/next$extraCallback;->onPostMessage(Landroid/database/Cursor;)V

    :cond_0
    return-void
.end method
