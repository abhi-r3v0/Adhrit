.class public final Lo/eventFromJson;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final AUTO_ID_ALPHABET:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"

.field private static final AUTO_ID_LENGTH:I = 0x14

.field private static final COMPARABLE_COMPARATOR:Ljava/util/Comparator;

.field private static final VOID_ERROR_TRANSFORMER:Lo/isDefaultApp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isDefaultApp<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final rand:Ljava/util/Random;


# instance fields
.field private final synthetic zzdd:Lo/deleteAllReports;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lo/eventFromJson;->rand:Ljava/util/Random;

    .line 101
    new-instance v0, Lo/eventFromJson$5;

    invoke-direct {v0}, Lo/eventFromJson$5;-><init>()V

    sput-object v0, Lo/eventFromJson;->COMPARABLE_COMPARATOR:Ljava/util/Comparator;

    .line 145
    invoke-static {}, Lo/reportFromJson;->lambdaFactory$()Lo/isDefaultApp;

    move-result-object v0

    sput-object v0, Lo/eventFromJson;->VOID_ERROR_TRANSFORMER:Lo/isDefaultApp;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/deleteAllReports;)V
    .locals 0

    .line 6001
    iput-object p1, p0, Lo/eventFromJson;->zzdd:Lo/deleteAllReports;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static autoId()Ljava/lang/String;
    .locals 4

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x14

    if-ge v1, v2, :cond_0

    .line 49
    sget-object v2, Lo/eventFromJson;->rand:Ljava/util/Random;

    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    const-string v3, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs collectUpdateArguments(ILjava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 171
    array-length v0, p3

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 177
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    invoke-static {v0, p3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 181
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_2

    .line 182
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 183
    instance-of p3, p2, Ljava/lang/String;

    if-nez p3, :cond_1

    instance-of p3, p2, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;

    if-eqz p3, :cond_0

    goto :goto_1

    .line 184
    :cond_0
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Excepted field name at argument position "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/2addr p1, p0

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " but got "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " in call to update.  The arguments to update should alternate between field names and values"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_1
    :goto_1
    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_2
    return-object v0

    .line 172
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Missing value in call to update().  There must be an even number of arguments that alternate between field names and values"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>()",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    .line 111
    sget-object v0, Lo/eventFromJson;->COMPARABLE_COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method

.method public static compareBooleans(ZZ)I
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static compareByteStrings(Lo/SessionProtobufHelper;Lo/SessionProtobufHelper;)I
    .locals 4

    .line 223
    invoke-virtual {p0}, Lo/SessionProtobufHelper;->onMessageChannelReady()I

    move-result v0

    invoke-virtual {p1}, Lo/SessionProtobufHelper;->onMessageChannelReady()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 226
    invoke-virtual {p0, v1}, Lo/SessionProtobufHelper;->onNavigationEvent(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 227
    invoke-virtual {p1, v1}, Lo/SessionProtobufHelper;->onNavigationEvent(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    if-ge v2, v3, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-le v2, v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 235
    :cond_2
    invoke-virtual {p0}, Lo/SessionProtobufHelper;->onMessageChannelReady()I

    move-result p0

    invoke-virtual {p1}, Lo/SessionProtobufHelper;->onMessageChannelReady()I

    move-result p1

    invoke-static {p0, p1}, Lo/eventFromJson;->compareIntegers(II)I

    move-result p0

    return p0
.end method

.method public static compareDoubles(DD)I
    .locals 0

    .line 92
    invoke-static {p0, p1, p2, p3}, Lo/extraCallback;->onPostMessage(DD)I

    move-result p0

    return p0
.end method

.method public static compareIntegers(II)I
    .locals 0

    if-ge p0, p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-le p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static compareLongs(JJ)I
    .locals 1

    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-lez v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static compareMixed(DJ)I
    .locals 5

    .line 2037
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-wide/high16 v2, -0x3c20000000000000L    # -9.223372036854776E18

    cmpg-double v0, p0, v2

    if-gez v0, :cond_1

    return v1

    :cond_1
    const-wide/high16 v2, 0x43e0000000000000L    # 9.223372036854776E18

    const/4 v0, 0x1

    cmpl-double v4, p0, v2

    if-ltz v4, :cond_2

    return v0

    :cond_2
    double-to-long v2, p0

    cmp-long v4, v2, p2

    if-gez v4, :cond_3

    goto :goto_0

    :cond_3
    if-lez v4, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_5

    return v1

    :cond_5
    long-to-double p2, p2

    .line 2059
    invoke-static {p0, p1, p2, p3}, Lo/extraCallback;->onPostMessage(DD)I

    move-result p0

    return p0
.end method

.method private static convertStatusException(Ljava/lang/Exception;)Ljava/lang/Exception;
    .locals 1

    .line 125
    instance-of v0, p0, Lio/grpc/StatusException;

    if-eqz v0, :cond_0

    .line 126
    check-cast p0, Lio/grpc/StatusException;

    .line 5075
    iget-object p0, p0, Lio/grpc/StatusException;->onMessageChannelReady:Lo/emptyMap;

    .line 127
    invoke-static {p0}, Lo/eventFromJson;->exceptionFromStatus(Lo/emptyMap;)Lcom/google/firebase/firestore/FirebaseFirestoreException;

    move-result-object p0

    return-object p0

    .line 128
    :cond_0
    instance-of v0, p0, Lio/grpc/StatusRuntimeException;

    if-eqz v0, :cond_1

    .line 129
    check-cast p0, Lio/grpc/StatusRuntimeException;

    .line 5077
    iget-object p0, p0, Lio/grpc/StatusRuntimeException;->onMessageChannelReady:Lo/emptyMap;

    .line 130
    invoke-static {p0}, Lo/eventFromJson;->exceptionFromStatus(Lo/emptyMap;)Lcom/google/firebase/firestore/FirebaseFirestoreException;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static convertThrowableToException(Ljava/lang/Throwable;)Ljava/lang/Exception;
    .locals 1

    .line 138
    instance-of v0, p0, Ljava/lang/Exception;

    if-eqz v0, :cond_0

    .line 139
    check-cast p0, Ljava/lang/Exception;

    invoke-static {p0}, Lo/eventFromJson;->convertStatusException(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object p0

    return-object p0

    .line 141
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static crashMainThread(Ljava/lang/RuntimeException;)V
    .locals 2

    .line 215
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {p0}, Lo/toStringMap$asBinder;->lambdaFactory$(Ljava/lang/RuntimeException;)Ljava/lang/Runnable;

    move-result-object p0

    .line 216
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static exceptionFromStatus(Lo/emptyMap;)Lcom/google/firebase/firestore/FirebaseFirestoreException;
    .locals 3

    .line 2541
    new-instance v0, Lio/grpc/StatusException;

    invoke-direct {v0, p0}, Lio/grpc/StatusException;-><init>(Lo/emptyMap;)V

    .line 116
    new-instance v1, Lcom/google/firebase/firestore/FirebaseFirestoreException;

    .line 117
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 3492
    iget-object p0, p0, Lo/emptyMap;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    .line 4217
    iget p0, p0, Lo/emptyMap$onPostMessage;->requestPostMessageChannel:I

    .line 117
    invoke-static {p0}, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->fromValue(I)Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    move-result-object p0

    invoke-direct {v1, v2, p0, v0}, Lcom/google/firebase/firestore/FirebaseFirestoreException;-><init>(Ljava/lang/String;Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public static synthetic lambda$crashMainThread$1(Ljava/lang/RuntimeException;)V
    .locals 0

    .line 218
    throw p0
.end method

.method static synthetic lambda$static$0(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 147
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->extraCallback()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Void;

    return-object p0

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->onNavigationEvent()Ljava/lang/Exception;

    move-result-object p0

    invoke-static {p0}, Lo/eventFromJson;->convertStatusException(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object p0

    .line 151
    instance-of v0, p0, Lcom/google/firebase/firestore/FirebaseFirestoreException;

    if-eqz v0, :cond_1

    .line 152
    throw p0

    .line 154
    :cond_1
    new-instance v0, Lcom/google/firebase/firestore/FirebaseFirestoreException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->UNKNOWN:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    invoke-direct {v0, v1, v2, p0}, Lcom/google/firebase/firestore/FirebaseFirestoreException;-><init>(Ljava/lang/String;Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static toDebugString(Lo/SessionProtobufHelper;)Ljava/lang/String;
    .locals 6

    .line 198
    invoke-virtual {p0}, Lo/SessionProtobufHelper;->onMessageChannelReady()I

    move-result v0

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, v0, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 201
    invoke-virtual {p0, v2}, Lo/SessionProtobufHelper;->onNavigationEvent(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    ushr-int/lit8 v4, v3, 0x4

    const/16 v5, 0x10

    .line 202
    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v3, v3, 0xf

    .line 203
    invoke-static {v3, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 205
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static typeName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    .line 210
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static voidErrorTransformer()Lo/isDefaultApp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/isDefaultApp<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 159
    sget-object v0, Lo/eventFromJson;->VOID_ERROR_TRANSFORMER:Lo/isDefaultApp;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 6002
    iget-object v0, p0, Lo/eventFromJson;->zzdd:Lo/deleteAllReports;

    invoke-static {v0}, Lo/deleteAllReports;->zzc(Lo/deleteAllReports;)V

    return-void
.end method
