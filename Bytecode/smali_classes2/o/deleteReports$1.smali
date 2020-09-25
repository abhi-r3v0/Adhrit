.class final Lo/deleteReports$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getEventLogSize$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/deleteReports;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getEventLogSize$onNavigationEvent<",
        "Lo/deleteReports;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(I)Lo/getEventLogSize$ICustomTabsCallback;
    .locals 0

    .line 1073
    invoke-static {p1}, Lo/deleteReports;->onPostMessage(I)Lo/deleteReports;

    move-result-object p1

    return-object p1
.end method
