.class public final Lo/getChildViewHolder$ICustomTabsCallback;
.super Landroid/database/DataSetObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getChildViewHolder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lifestyle/win/luckynumber/widget/LuckyNumberDigitView$dataObserver$1",
        "Landroid/database/DataSetObserver;",
        "onChanged",
        "",
        "onInvalidated",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/getChildViewHolder;


# direct methods
.method constructor <init>(Lo/getChildViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 135
    iput-object p1, p0, Lo/getChildViewHolder$ICustomTabsCallback;->extraCallback:Lo/getChildViewHolder;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 2

    .line 137
    iget-object v0, p0, Lo/getChildViewHolder$ICustomTabsCallback;->extraCallback:Lo/getChildViewHolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/getChildViewHolder;->extraCallback(Z)V

    return-void
.end method

.method public final onInvalidated()V
    .locals 2

    .line 141
    iget-object v0, p0, Lo/getChildViewHolder$ICustomTabsCallback;->extraCallback:Lo/getChildViewHolder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/getChildViewHolder;->extraCallback(Z)V

    return-void
.end method
