.class public final Lo/setEndIconOnClickListener;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final ICustomTabsCallback:Lo/setCustomAmount$onRelationshipValidationResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setCustomAmount$onRelationshipValidationResult<",
            "Lo/setUserDefaultStyle;",
            ">;"
        }
    .end annotation
.end field

.field private static final onNavigationEvent:Lo/setCustomAmount$onNavigationEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setCustomAmount$onNavigationEvent<",
            "Lo/setUserDefaultStyle;",
            "Lo/setCustomAmount$onPostMessage$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final arg$1:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lo/setCustomAmount$onRelationshipValidationResult;

    invoke-direct {v0}, Lo/setCustomAmount$onRelationshipValidationResult;-><init>()V

    sput-object v0, Lo/setEndIconOnClickListener;->ICustomTabsCallback:Lo/setCustomAmount$onRelationshipValidationResult;

    new-instance v0, Lo/setEndIconActivated;

    invoke-direct {v0}, Lo/setEndIconActivated;-><init>()V

    sput-object v0, Lo/setEndIconOnClickListener;->onNavigationEvent:Lo/setCustomAmount$onNavigationEvent;

    new-instance v0, Lo/setCustomAmount;

    sget-object v1, Lo/setEndIconOnClickListener;->onNavigationEvent:Lo/setCustomAmount$onNavigationEvent;

    sget-object v2, Lo/setEndIconOnClickListener;->ICustomTabsCallback:Lo/setCustomAmount$onRelationshipValidationResult;

    const-string v3, "Phenotype.API"

    invoke-direct {v0, v3, v1, v2}, Lo/setCustomAmount;-><init>(Ljava/lang/String;Lo/setCustomAmount$onNavigationEvent;Lo/setCustomAmount$onRelationshipValidationResult;)V

    new-instance v0, Lo/setApplyEmbeddedStyles;

    invoke-direct {v0}, Lo/setApplyEmbeddedStyles;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1020
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;)V
    .locals 0

    .line 2000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setEndIconOnClickListener;->arg$1:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;

    return-void
.end method

.method public static hardAssert(Z)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, ""

    .line 1062
    invoke-static {p0, v1, v0}, Lo/setEndIconOnClickListener;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    if-eqz p0, :cond_0

    return-void

    .line 1067
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hardAssert failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public static lambdaFactory$(Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;)Ljava/lang/Runnable;
    .locals 1

    .line 4000
    new-instance v0, Lo/setEndIconOnClickListener;

    invoke-direct {v0, p0}, Lo/setEndIconOnClickListener;-><init>(Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;)V

    return-object v0
.end method

.method public static longFromObject(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 2

    .line 1051
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1052
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    int-to-long v0, p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 1053
    :cond_0
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 1054
    check-cast p0, Ljava/lang/Long;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static onNavigationEvent(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "content://com.google.android.gms.phenotype/"

    if-eqz v0, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static pathToString(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1034
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "/"

    if-eqz v0, :cond_0

    return-object v1

    .line 1037
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    .line 1039
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v2, :cond_1

    .line 1041
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/4 v2, 0x0

    .line 1044
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1046
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static stringToPath(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1022
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "/"

    const/4 v2, -0x1

    .line 1024
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 1025
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 1026
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1027
    aget-object v2, p0, v1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 3000
    iget-object v0, p0, Lo/setEndIconOnClickListener;->arg$1:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;

    invoke-static {v0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->lambda$new$0(Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;)V

    return-void
.end method
