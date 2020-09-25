.class public final Lo/instantiateService;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final onMessageChannelReady:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "([0-9]{1,19})D([0-9]{4})([0-9]{3})?(.*)"

    .line 22
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/instantiateService;->onMessageChannelReady:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static extraCallback(Lo/setGuidelineEnd;[B)Z
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [Lo/setMinHeight;

    .line 35
    sget-object v2, Lo/setTag;->onNavigationEvent:Lo/setMinHeight;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lo/setTag;->validateRelationship:Lo/setMinHeight;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {p1, v1}, Lo/instantiateActivity;->ICustomTabsCallback([B[Lo/setMinHeight;)[B

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "%02x"

    .line 1125
    invoke-static {p1, v1}, Lo/extraCallback$ICustomTabsCallback;->ICustomTabsCallback([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 39
    sget-object v1, Lo/instantiateService;->onMessageChannelReady:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 41
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    invoke-virtual {p1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 1152
    iput-object v1, p0, Lo/setGuidelineEnd;->extraCallback:Ljava/lang/String;

    .line 45
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1171
    iput-object v0, p0, Lo/setGuidelineEnd;->ICustomTabsCallback:Ljava/lang/String;

    .line 49
    new-instance p0, Lo/setOptimizationLevel;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/setOptimizationLevel;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    :cond_0
    return v3
.end method
