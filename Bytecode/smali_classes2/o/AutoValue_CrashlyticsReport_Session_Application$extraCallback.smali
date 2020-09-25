.class final Lo/AutoValue_CrashlyticsReport_Session_Application$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AutoValue_CrashlyticsReport_Session_Application;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lo/setDiskUsed;",
        ">;"
    }
.end annotation


# instance fields
.field private final sortOrder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/setOrganization;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/setOrganization;",
            ">;)V"
        }
    .end annotation

    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 475
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/setOrganization;

    if-nez v2, :cond_1

    .line 476
    invoke-virtual {v3}, Lo/setOrganization;->getField()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object v2

    sget-object v3, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;->KEY_PATH:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 481
    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$extraCallback;->sortOrder:Ljava/util/List;

    return-void

    .line 479
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "QueryComparator needs to have a key ordering"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 470
    check-cast p1, Lo/setDiskUsed;

    check-cast p2, Lo/setDiskUsed;

    invoke-virtual {p0, p1, p2}, Lo/AutoValue_CrashlyticsReport_Session_Application$extraCallback;->compare(Lo/setDiskUsed;Lo/setDiskUsed;)I

    move-result p1

    return p1
.end method

.method public final compare(Lo/setDiskUsed;Lo/setDiskUsed;)I
    .locals 2

    .line 486
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$extraCallback;->sortOrder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/setOrganization;

    .line 487
    invoke-virtual {v1, p1, p2}, Lo/setOrganization;->compare(Lo/setDiskUsed;Lo/setDiskUsed;)I

    move-result v1

    if-eqz v1, :cond_0

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
