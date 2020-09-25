.class public final enum Lo/CrashlyticsReport$Type$extraCallback;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CrashlyticsReport$Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/CrashlyticsReport$Type$extraCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lo/CrashlyticsReport$Type$extraCallback;

.field public static final enum ALL:Lo/CrashlyticsReport$Type$extraCallback;

.field public static final enum CONNECTIVITY_ATTEMPT_TIMER:Lo/CrashlyticsReport$Type$extraCallback;

.field public static final enum GARBAGE_COLLECTION:Lo/CrashlyticsReport$Type$extraCallback;

.field public static final enum LISTEN_STREAM_CONNECTION_BACKOFF:Lo/CrashlyticsReport$Type$extraCallback;

.field public static final enum LISTEN_STREAM_IDLE:Lo/CrashlyticsReport$Type$extraCallback;

.field public static final enum ONLINE_STATE_TIMEOUT:Lo/CrashlyticsReport$Type$extraCallback;

.field public static final enum RETRY_TRANSACTION:Lo/CrashlyticsReport$Type$extraCallback;

.field public static final enum WRITE_STREAM_CONNECTION_BACKOFF:Lo/CrashlyticsReport$Type$extraCallback;

.field public static final enum WRITE_STREAM_IDLE:Lo/CrashlyticsReport$Type$extraCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 54
    new-instance v0, Lo/CrashlyticsReport$Type$extraCallback;

    const/4 v1, 0x0

    const-string v2, "ALL"

    invoke-direct {v0, v2, v1}, Lo/CrashlyticsReport$Type$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/CrashlyticsReport$Type$extraCallback;->ALL:Lo/CrashlyticsReport$Type$extraCallback;

    .line 61
    new-instance v0, Lo/CrashlyticsReport$Type$extraCallback;

    const/4 v2, 0x1

    const-string v3, "LISTEN_STREAM_IDLE"

    invoke-direct {v0, v3, v2}, Lo/CrashlyticsReport$Type$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/CrashlyticsReport$Type$extraCallback;->LISTEN_STREAM_IDLE:Lo/CrashlyticsReport$Type$extraCallback;

    .line 62
    new-instance v0, Lo/CrashlyticsReport$Type$extraCallback;

    const/4 v3, 0x2

    const-string v4, "LISTEN_STREAM_CONNECTION_BACKOFF"

    invoke-direct {v0, v4, v3}, Lo/CrashlyticsReport$Type$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/CrashlyticsReport$Type$extraCallback;->LISTEN_STREAM_CONNECTION_BACKOFF:Lo/CrashlyticsReport$Type$extraCallback;

    .line 63
    new-instance v0, Lo/CrashlyticsReport$Type$extraCallback;

    const/4 v4, 0x3

    const-string v5, "WRITE_STREAM_IDLE"

    invoke-direct {v0, v5, v4}, Lo/CrashlyticsReport$Type$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/CrashlyticsReport$Type$extraCallback;->WRITE_STREAM_IDLE:Lo/CrashlyticsReport$Type$extraCallback;

    .line 64
    new-instance v0, Lo/CrashlyticsReport$Type$extraCallback;

    const/4 v5, 0x4

    const-string v6, "WRITE_STREAM_CONNECTION_BACKOFF"

    invoke-direct {v0, v6, v5}, Lo/CrashlyticsReport$Type$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/CrashlyticsReport$Type$extraCallback;->WRITE_STREAM_CONNECTION_BACKOFF:Lo/CrashlyticsReport$Type$extraCallback;

    .line 70
    new-instance v0, Lo/CrashlyticsReport$Type$extraCallback;

    const/4 v6, 0x5

    const-string v7, "ONLINE_STATE_TIMEOUT"

    invoke-direct {v0, v7, v6}, Lo/CrashlyticsReport$Type$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/CrashlyticsReport$Type$extraCallback;->ONLINE_STATE_TIMEOUT:Lo/CrashlyticsReport$Type$extraCallback;

    .line 72
    new-instance v0, Lo/CrashlyticsReport$Type$extraCallback;

    const/4 v7, 0x6

    const-string v8, "GARBAGE_COLLECTION"

    invoke-direct {v0, v8, v7}, Lo/CrashlyticsReport$Type$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/CrashlyticsReport$Type$extraCallback;->GARBAGE_COLLECTION:Lo/CrashlyticsReport$Type$extraCallback;

    .line 77
    new-instance v0, Lo/CrashlyticsReport$Type$extraCallback;

    const/4 v8, 0x7

    const-string v9, "RETRY_TRANSACTION"

    invoke-direct {v0, v9, v8}, Lo/CrashlyticsReport$Type$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/CrashlyticsReport$Type$extraCallback;->RETRY_TRANSACTION:Lo/CrashlyticsReport$Type$extraCallback;

    .line 82
    new-instance v0, Lo/CrashlyticsReport$Type$extraCallback;

    const/16 v9, 0x8

    const-string v10, "CONNECTIVITY_ATTEMPT_TIMER"

    invoke-direct {v0, v10, v9}, Lo/CrashlyticsReport$Type$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/CrashlyticsReport$Type$extraCallback;->CONNECTIVITY_ATTEMPT_TIMER:Lo/CrashlyticsReport$Type$extraCallback;

    const/16 v10, 0x9

    new-array v10, v10, [Lo/CrashlyticsReport$Type$extraCallback;

    .line 52
    sget-object v11, Lo/CrashlyticsReport$Type$extraCallback;->ALL:Lo/CrashlyticsReport$Type$extraCallback;

    aput-object v11, v10, v1

    sget-object v1, Lo/CrashlyticsReport$Type$extraCallback;->LISTEN_STREAM_IDLE:Lo/CrashlyticsReport$Type$extraCallback;

    aput-object v1, v10, v2

    sget-object v1, Lo/CrashlyticsReport$Type$extraCallback;->LISTEN_STREAM_CONNECTION_BACKOFF:Lo/CrashlyticsReport$Type$extraCallback;

    aput-object v1, v10, v3

    sget-object v1, Lo/CrashlyticsReport$Type$extraCallback;->WRITE_STREAM_IDLE:Lo/CrashlyticsReport$Type$extraCallback;

    aput-object v1, v10, v4

    sget-object v1, Lo/CrashlyticsReport$Type$extraCallback;->WRITE_STREAM_CONNECTION_BACKOFF:Lo/CrashlyticsReport$Type$extraCallback;

    aput-object v1, v10, v5

    sget-object v1, Lo/CrashlyticsReport$Type$extraCallback;->ONLINE_STATE_TIMEOUT:Lo/CrashlyticsReport$Type$extraCallback;

    aput-object v1, v10, v6

    sget-object v1, Lo/CrashlyticsReport$Type$extraCallback;->GARBAGE_COLLECTION:Lo/CrashlyticsReport$Type$extraCallback;

    aput-object v1, v10, v7

    sget-object v1, Lo/CrashlyticsReport$Type$extraCallback;->RETRY_TRANSACTION:Lo/CrashlyticsReport$Type$extraCallback;

    aput-object v1, v10, v8

    aput-object v0, v10, v9

    sput-object v10, Lo/CrashlyticsReport$Type$extraCallback;->$VALUES:[Lo/CrashlyticsReport$Type$extraCallback;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/CrashlyticsReport$Type$extraCallback;
    .locals 1

    .line 52
    const-class v0, Lo/CrashlyticsReport$Type$extraCallback;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/CrashlyticsReport$Type$extraCallback;

    return-object p0
.end method

.method public static values()[Lo/CrashlyticsReport$Type$extraCallback;
    .locals 1

    .line 52
    sget-object v0, Lo/CrashlyticsReport$Type$extraCallback;->$VALUES:[Lo/CrashlyticsReport$Type$extraCallback;

    invoke-virtual {v0}, [Lo/CrashlyticsReport$Type$extraCallback;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/CrashlyticsReport$Type$extraCallback;

    return-object v0
.end method
