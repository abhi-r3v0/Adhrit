.class final Lo/getHostName$ICustomTabsCallback$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getHostName$ICustomTabsCallback;->extraCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic extraCallback:Landroid/util/Pair;

.field private synthetic onPostMessage:Lo/getHostName$ICustomTabsCallback;


# direct methods
.method constructor <init>(Lo/getHostName$ICustomTabsCallback;Landroid/util/Pair;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lo/getHostName$ICustomTabsCallback$3;->onPostMessage:Lo/getHostName$ICustomTabsCallback;

    iput-object p2, p0, Lo/getHostName$ICustomTabsCallback$3;->extraCallback:Landroid/util/Pair;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 111
    iget-object v0, p0, Lo/getHostName$ICustomTabsCallback$3;->onPostMessage:Lo/getHostName$ICustomTabsCallback;

    iget-object v0, v0, Lo/getHostName$ICustomTabsCallback;->extraCallback:Lo/getHostName;

    iget-object v1, p0, Lo/getHostName$ICustomTabsCallback$3;->extraCallback:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lo/waitForCustomerUserId;

    iget-object v2, p0, Lo/getHostName$ICustomTabsCallback$3;->extraCallback:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lo/setPreinstallAttribution;

    invoke-virtual {v0, v1, v2}, Lo/getHostName;->ICustomTabsCallback(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)V

    return-void
.end method
