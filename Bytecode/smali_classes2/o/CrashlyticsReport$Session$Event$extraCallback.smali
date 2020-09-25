.class public final enum Lo/CrashlyticsReport$Session$Event$extraCallback;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CrashlyticsReport$Session$Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/CrashlyticsReport$Session$Event$extraCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lo/CrashlyticsReport$Session$Event$extraCallback;

.field public static final enum DOCUMENTS:Lo/CrashlyticsReport$Session$Event$extraCallback;

.field public static final enum QUERY:Lo/CrashlyticsReport$Session$Event$extraCallback;

.field public static final enum TARGETTYPE_NOT_SET:Lo/CrashlyticsReport$Session$Event$extraCallback;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 27
    new-instance v0, Lo/CrashlyticsReport$Session$Event$extraCallback;

    const/4 v1, 0x0

    const-string v2, "QUERY"

    const/4 v3, 0x5

    invoke-direct {v0, v2, v1, v3}, Lo/CrashlyticsReport$Session$Event$extraCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/CrashlyticsReport$Session$Event$extraCallback;->QUERY:Lo/CrashlyticsReport$Session$Event$extraCallback;

    .line 28
    new-instance v0, Lo/CrashlyticsReport$Session$Event$extraCallback;

    const/4 v2, 0x1

    const-string v3, "DOCUMENTS"

    const/4 v4, 0x6

    invoke-direct {v0, v3, v2, v4}, Lo/CrashlyticsReport$Session$Event$extraCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/CrashlyticsReport$Session$Event$extraCallback;->DOCUMENTS:Lo/CrashlyticsReport$Session$Event$extraCallback;

    .line 29
    new-instance v0, Lo/CrashlyticsReport$Session$Event$extraCallback;

    const/4 v3, 0x2

    const-string v4, "TARGETTYPE_NOT_SET"

    invoke-direct {v0, v4, v3, v1}, Lo/CrashlyticsReport$Session$Event$extraCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/CrashlyticsReport$Session$Event$extraCallback;->TARGETTYPE_NOT_SET:Lo/CrashlyticsReport$Session$Event$extraCallback;

    const/4 v4, 0x3

    new-array v4, v4, [Lo/CrashlyticsReport$Session$Event$extraCallback;

    .line 26
    sget-object v5, Lo/CrashlyticsReport$Session$Event$extraCallback;->QUERY:Lo/CrashlyticsReport$Session$Event$extraCallback;

    aput-object v5, v4, v1

    sget-object v1, Lo/CrashlyticsReport$Session$Event$extraCallback;->DOCUMENTS:Lo/CrashlyticsReport$Session$Event$extraCallback;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lo/CrashlyticsReport$Session$Event$extraCallback;->$VALUES:[Lo/CrashlyticsReport$Session$Event$extraCallback;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput p3, p0, Lo/CrashlyticsReport$Session$Event$extraCallback;->value:I

    return-void
.end method

.method public static forNumber(I)Lo/CrashlyticsReport$Session$Event$extraCallback;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 45
    :cond_0
    sget-object p0, Lo/CrashlyticsReport$Session$Event$extraCallback;->DOCUMENTS:Lo/CrashlyticsReport$Session$Event$extraCallback;

    return-object p0

    .line 44
    :cond_1
    sget-object p0, Lo/CrashlyticsReport$Session$Event$extraCallback;->QUERY:Lo/CrashlyticsReport$Session$Event$extraCallback;

    return-object p0

    .line 46
    :cond_2
    sget-object p0, Lo/CrashlyticsReport$Session$Event$extraCallback;->TARGETTYPE_NOT_SET:Lo/CrashlyticsReport$Session$Event$extraCallback;

    return-object p0
.end method

.method public static valueOf(I)Lo/CrashlyticsReport$Session$Event$extraCallback;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 39
    invoke-static {p0}, Lo/CrashlyticsReport$Session$Event$extraCallback;->forNumber(I)Lo/CrashlyticsReport$Session$Event$extraCallback;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lo/CrashlyticsReport$Session$Event$extraCallback;
    .locals 1

    .line 26
    const-class v0, Lo/CrashlyticsReport$Session$Event$extraCallback;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/CrashlyticsReport$Session$Event$extraCallback;

    return-object p0
.end method

.method public static values()[Lo/CrashlyticsReport$Session$Event$extraCallback;
    .locals 1

    .line 26
    sget-object v0, Lo/CrashlyticsReport$Session$Event$extraCallback;->$VALUES:[Lo/CrashlyticsReport$Session$Event$extraCallback;

    invoke-virtual {v0}, [Lo/CrashlyticsReport$Session$Event$extraCallback;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/CrashlyticsReport$Session$Event$extraCallback;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 51
    iget v0, p0, Lo/CrashlyticsReport$Session$Event$extraCallback;->value:I

    return v0
.end method
