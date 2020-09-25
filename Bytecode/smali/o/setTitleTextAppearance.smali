.class public final Lo/setTitleTextAppearance;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setTitleTextAppearance$onPostMessage;
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:Lo/setTitleTextAppearance$onPostMessage;


# direct methods
.method public constructor <init>(Lo/setTitleTextAppearance$onPostMessage;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lo/setTitleTextAppearance;->ICustomTabsCallback:Lo/setTitleTextAppearance$onPostMessage;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 11
    iget-object p1, p0, Lo/setTitleTextAppearance;->ICustomTabsCallback:Lo/setTitleTextAppearance$onPostMessage;

    invoke-interface {p1}, Lo/setTitleTextAppearance$onPostMessage;->newSession()V

    return-void
.end method
