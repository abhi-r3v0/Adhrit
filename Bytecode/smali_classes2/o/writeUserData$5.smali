.class final Lo/writeUserData$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/onReportSendComplete;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/writeUserData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/onReportSendComplete<",
        "Lo/loadInstallerPackageName;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic evaluate(Ljava/lang/Object;)Z
    .locals 0

    .line 413
    check-cast p1, Lo/loadInstallerPackageName;

    invoke-virtual {p0, p1}, Lo/writeUserData$5;->evaluate(Lo/loadInstallerPackageName;)Z

    move-result p1

    return p1
.end method

.method public final evaluate(Lo/loadInstallerPackageName;)Z
    .locals 0

    .line 416
    invoke-virtual {p1}, Lo/loadInstallerPackageName;->isVisible()Z

    move-result p1

    return p1
.end method
