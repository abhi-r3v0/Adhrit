.class public Lo/getMarkerFile;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final DATA_STALE:I = -0x1

.field public static final DISCONNECTED:I = -0x4

.field public static final EXPIRED_TOKEN:I = -0x6

.field public static final INVALID_TOKEN:I = -0x7

.field public static final MAX_RETRIES:I = -0x8

.field public static final NETWORK_ERROR:I = -0x18

.field public static final OPERATION_FAILED:I = -0x2

.field public static final OVERRIDDEN_BY_SET:I = -0x9

.field public static final PERMISSION_DENIED:I = -0x3

.field public static final UNAVAILABLE:I = -0xa

.field public static final UNKNOWN_ERROR:I = -0x3e7

.field public static final USER_CODE_EXCEPTION:I = -0xb

.field public static final WRITE_CANCELED:I = -0x19

.field private static final errorCodes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final errorReasons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final code:I

.field private final details:Ljava/lang/String;

.field private final message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 76
    sput-object v0, Lo/getMarkerFile;->errorReasons:Ljava/util/Map;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "The transaction needs to be run again with current data"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lo/getMarkerFile;->errorReasons:Ljava/util/Map;

    const/4 v2, -0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "The server indicated that this operation failed"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lo/getMarkerFile;->errorReasons:Ljava/util/Map;

    const/4 v3, -0x3

    .line 79
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "This client does not have permission to perform this operation"

    .line 78
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lo/getMarkerFile;->errorReasons:Ljava/util/Map;

    const/4 v4, -0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "The operation had to be aborted due to a network disconnect"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lo/getMarkerFile;->errorReasons:Ljava/util/Map;

    const/4 v5, -0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "The supplied auth token has expired"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lo/getMarkerFile;->errorReasons:Ljava/util/Map;

    const/4 v6, -0x7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "The supplied auth token was invalid"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lo/getMarkerFile;->errorReasons:Ljava/util/Map;

    const/4 v7, -0x8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "The transaction had too many retries"

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lo/getMarkerFile;->errorReasons:Ljava/util/Map;

    const/16 v8, -0x9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "The transaction was overridden by a subsequent set"

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lo/getMarkerFile;->errorReasons:Ljava/util/Map;

    const/16 v9, -0xa

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "The service is unavailable"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lo/getMarkerFile;->errorReasons:Ljava/util/Map;

    const/16 v10, -0xb

    .line 87
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "User code called from the Firebase Database runloop threw an exception:\n"

    .line 86
    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lo/getMarkerFile;->errorReasons:Ljava/util/Map;

    const/16 v10, -0x18

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "The operation could not be performed due to a network error"

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lo/getMarkerFile;->errorReasons:Ljava/util/Map;

    const/16 v11, -0x19

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "The write was canceled by the user."

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lo/getMarkerFile;->errorReasons:Ljava/util/Map;

    const/16 v12, -0x3e7

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "An unknown error occurred"

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 101
    sput-object v0, Lo/getMarkerFile;->errorCodes:Ljava/util/Map;

    const-string v12, "datastale"

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lo/getMarkerFile;->errorCodes:Ljava/util/Map;

    const-string v1, "failure"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lo/getMarkerFile;->errorCodes:Ljava/util/Map;

    const-string v1, "permission_denied"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lo/getMarkerFile;->errorCodes:Ljava/util/Map;

    const-string v1, "disconnected"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lo/getMarkerFile;->errorCodes:Ljava/util/Map;

    const-string v1, "expired_token"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lo/getMarkerFile;->errorCodes:Ljava/util/Map;

    const-string v1, "invalid_token"

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lo/getMarkerFile;->errorCodes:Ljava/util/Map;

    const-string v1, "maxretries"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lo/getMarkerFile;->errorCodes:Ljava/util/Map;

    const-string v1, "overriddenbyset"

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lo/getMarkerFile;->errorCodes:Ljava/util/Map;

    const-string v1, "unavailable"

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lo/getMarkerFile;->errorCodes:Ljava/util/Map;

    const-string v1, "network_error"

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lo/getMarkerFile;->errorCodes:Ljava/util/Map;

    const-string v1, "write_canceled"

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 191
    invoke-direct {p0, p1, p2, v0}, Lo/getMarkerFile;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput p1, p0, Lo/getMarkerFile;->code:I

    .line 196
    iput-object p2, p0, Lo/getMarkerFile;->message:Ljava/lang/String;

    if-nez p3, :cond_0

    const-string p3, ""

    .line 197
    :cond_0
    iput-object p3, p0, Lo/getMarkerFile;->details:Ljava/lang/String;

    return-void
.end method

.method public static fromCode(I)Lo/getMarkerFile;
    .locals 3

    .line 150
    sget-object v0, Lo/getMarkerFile;->errorReasons:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    sget-object v0, Lo/getMarkerFile;->errorReasons:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 154
    new-instance v1, Lo/getMarkerFile;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lo/getMarkerFile;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 151
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Invalid Firebase Database error code: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromException(Ljava/lang/Throwable;)Lo/getMarkerFile;
    .locals 4

    .line 179
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 180
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 181
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 182
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lo/getMarkerFile;->errorReasons:Ljava/util/Map;

    const/16 v2, -0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 183
    new-instance v0, Lo/getMarkerFile;

    invoke-direct {v0, v2, p0}, Lo/getMarkerFile;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static fromStatus(Ljava/lang/String;)Lo/getMarkerFile;
    .locals 1

    const/4 v0, 0x0

    .line 125
    invoke-static {p0, v0}, Lo/getMarkerFile;->fromStatus(Ljava/lang/String;Ljava/lang/String;)Lo/getMarkerFile;

    move-result-object p0

    return-object p0
.end method

.method public static fromStatus(Ljava/lang/String;Ljava/lang/String;)Lo/getMarkerFile;
    .locals 1

    const/4 v0, 0x0

    .line 138
    invoke-static {p0, p1, v0}, Lo/getMarkerFile;->fromStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lo/getMarkerFile;

    move-result-object p0

    return-object p0
.end method

.method public static fromStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lo/getMarkerFile;
    .locals 2

    .line 168
    sget-object v0, Lo/getMarkerFile;->errorCodes:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/16 p0, -0x3e7

    .line 170
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :cond_0
    if-nez p1, :cond_1

    .line 173
    sget-object p1, Lo/getMarkerFile;->errorReasons:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 174
    :cond_1
    new-instance v0, Lo/getMarkerFile;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-direct {v0, p0, p1, p2}, Lo/getMarkerFile;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 202
    iget v0, p0, Lo/getMarkerFile;->code:I

    return v0
.end method

.method public getDetails()Ljava/lang/String;
    .locals 1

    .line 214
    iget-object v0, p0, Lo/getMarkerFile;->details:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Lo/getMarkerFile;->message:Ljava/lang/String;

    return-object v0
.end method

.method public toException()Lcom/google/firebase/database/DatabaseException;
    .locals 3

    .line 230
    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Firebase Database error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo/getMarkerFile;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DatabaseError: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/getMarkerFile;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
