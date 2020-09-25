.class public final Lo/setOptimizationLevel;
.super Lo/setConstraintSet;
.source ""


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 45
    invoke-direct {p0}, Lo/setConstraintSet;-><init>()V

    if-eqz p1, :cond_0

    .line 46
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 47
    new-instance v0, Lo/updateServerCache;

    const/4 v1, 0x4

    const-string v2, "0"

    invoke-static {p1, v1, v2}, Lorg/apache/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/extraCallback;->extraCallback(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lo/updateServerCache;-><init>([B)V

    .line 1328
    invoke-virtual {v0, v1}, Lo/updateServerCache;->ICustomTabsCallback(I)J

    .line 48
    const-class p1, Lo/setEmptyVisibility;

    .line 2328
    invoke-virtual {v0, v1}, Lo/updateServerCache;->ICustomTabsCallback(I)J

    .line 49
    const-class p1, Lo/setGuidelinePercent;

    .line 3328
    invoke-virtual {v0, v1}, Lo/updateServerCache;->ICustomTabsCallback(I)J

    .line 50
    const-class p1, Lo/putExtraData;

    :cond_0
    return-void
.end method
