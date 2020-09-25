.class final Lo/onCreateSupportNavigateUpTaskStack$asInterface;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onCreateSupportNavigateUpTaskStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "asInterface"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final onNavigationEvent:Lo/getBatteryLevel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getBatteryLevel<",
            "+TV;>;"
        }
    .end annotation
.end field

.field final onPostMessage:Lo/onCreateSupportNavigateUpTaskStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onCreateSupportNavigateUpTaskStack<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lo/onCreateSupportNavigateUpTaskStack;Lo/getBatteryLevel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onCreateSupportNavigateUpTaskStack<",
            "TV;>;",
            "Lo/getBatteryLevel<",
            "+TV;>;)V"
        }
    .end annotation

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    iput-object p1, p0, Lo/onCreateSupportNavigateUpTaskStack$asInterface;->onPostMessage:Lo/onCreateSupportNavigateUpTaskStack;

    .line 271
    iput-object p2, p0, Lo/onCreateSupportNavigateUpTaskStack$asInterface;->onNavigationEvent:Lo/getBatteryLevel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 276
    iget-object v0, p0, Lo/onCreateSupportNavigateUpTaskStack$asInterface;->onPostMessage:Lo/onCreateSupportNavigateUpTaskStack;

    iget-object v0, v0, Lo/onCreateSupportNavigateUpTaskStack;->onNavigationEvent:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    return-void

    .line 280
    :cond_0
    iget-object v0, p0, Lo/onCreateSupportNavigateUpTaskStack$asInterface;->onNavigationEvent:Lo/getBatteryLevel;

    invoke-static {v0}, Lo/onCreateSupportNavigateUpTaskStack;->onPostMessage(Lo/getBatteryLevel;)Ljava/lang/Object;

    move-result-object v0

    .line 281
    sget-object v1, Lo/onCreateSupportNavigateUpTaskStack;->ICustomTabsCallback:Lo/onCreateSupportNavigateUpTaskStack$onPostMessage;

    iget-object v2, p0, Lo/onCreateSupportNavigateUpTaskStack$asInterface;->onPostMessage:Lo/onCreateSupportNavigateUpTaskStack;

    invoke-virtual {v1, v2, p0, v0}, Lo/onCreateSupportNavigateUpTaskStack$onPostMessage;->onNavigationEvent(Lo/onCreateSupportNavigateUpTaskStack;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Lo/onCreateSupportNavigateUpTaskStack$asInterface;->onPostMessage:Lo/onCreateSupportNavigateUpTaskStack;

    invoke-static {v0}, Lo/onCreateSupportNavigateUpTaskStack;->extraCallback(Lo/onCreateSupportNavigateUpTaskStack;)V

    :cond_1
    return-void
.end method
