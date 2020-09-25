.class final synthetic Lo/isJailbroken;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field private static final instance:Lo/isJailbroken;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/isJailbroken;

    invoke-direct {v0}, Lo/isJailbroken;-><init>()V

    sput-object v0, Lo/isJailbroken;->instance:Lo/isJailbroken;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lo/isJailbroken;->instance:Lo/isJailbroken;

    return-object v0
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    check-cast p2, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    invoke-virtual {p1, p2}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->compareTo(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)I

    move-result p1

    return p1
.end method
