.class final Lo/MiddleOutStrategy$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MiddleOutStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/MiddleOutStrategy;


# direct methods
.method constructor <init>(Lo/MiddleOutStrategy;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lo/MiddleOutStrategy$1;->ICustomTabsCallback:Lo/MiddleOutStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 137
    iget-object p1, p0, Lo/MiddleOutStrategy$1;->ICustomTabsCallback:Lo/MiddleOutStrategy;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 138
    iget-object p1, p0, Lo/MiddleOutStrategy$1;->ICustomTabsCallback:Lo/MiddleOutStrategy;

    invoke-static {p1}, Lo/MiddleOutStrategy;->ICustomTabsCallback(Lo/MiddleOutStrategy;)I

    move-result p1

    invoke-static {p1}, Lo/SettingsSpiCall;->ICustomTabsCallback(I)V

    return-void
.end method
