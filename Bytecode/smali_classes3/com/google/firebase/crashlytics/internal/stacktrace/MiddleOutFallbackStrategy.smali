.class public Lcom/google/firebase/crashlytics/internal/stacktrace/MiddleOutFallbackStrategy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/stacktrace/StackTraceTrimmingStrategy;


# instance fields
.field private final maximumStackSize:I

.field private final middleOutStrategy:Lcom/google/firebase/crashlytics/internal/stacktrace/MiddleOutStrategy;

.field private final trimmingStrategies:[Lcom/google/firebase/crashlytics/internal/stacktrace/StackTraceTrimmingStrategy;


# direct methods
.method public varargs constructor <init>(I[Lcom/google/firebase/crashlytics/internal/stacktrace/StackTraceTrimmingStrategy;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/google/firebase/crashlytics/internal/stacktrace/MiddleOutFallbackStrategy;->maximumStackSize:I

    .line 29
    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/stacktrace/MiddleOutFallbackStrategy;->trimmingStrategies:[Lcom/google/firebase/crashlytics/internal/stacktrace/StackTraceTrimmingStrategy;

    .line 30
    new-instance p2, Lcom/google/firebase/crashlytics/internal/stacktrace/MiddleOutStrategy;

    invoke-direct {p2, p1}, Lcom/google/firebase/crashlytics/internal/stacktrace/MiddleOutStrategy;-><init>(I)V

    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/stacktrace/MiddleOutFallbackStrategy;->middleOutStrategy:Lcom/google/firebase/crashlytics/internal/stacktrace/MiddleOutStrategy;

    return-void
.end method


# virtual methods
.method public getTrimmedStackTrace([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;
    .locals 7

    .line 35
    array-length v0, p1

    iget v1, p0, Lcom/google/firebase/crashlytics/internal/stacktrace/MiddleOutFallbackStrategy;->maximumStackSize:I

    if-gt v0, v1, :cond_0

    return-object p1

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/stacktrace/MiddleOutFallbackStrategy;->trimmingStrategies:[Lcom/google/firebase/crashlytics/internal/stacktrace/StackTraceTrimmingStrategy;

    array-length v1, v0

    const/4 v2, 0x0

    move-object v3, p1

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    .line 41
    array-length v5, v3

    iget v6, p0, Lcom/google/firebase/crashlytics/internal/stacktrace/MiddleOutFallbackStrategy;->maximumStackSize:I

    if-le v5, v6, :cond_1

    .line 45
    invoke-interface {v4, p1}, Lcom/google/firebase/crashlytics/internal/stacktrace/StackTraceTrimmingStrategy;->getTrimmedStackTrace([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 48
    :cond_1
    array-length p1, v3

    iget v0, p0, Lcom/google/firebase/crashlytics/internal/stacktrace/MiddleOutFallbackStrategy;->maximumStackSize:I

    if-le p1, v0, :cond_2

    .line 49
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/stacktrace/MiddleOutFallbackStrategy;->middleOutStrategy:Lcom/google/firebase/crashlytics/internal/stacktrace/MiddleOutStrategy;

    invoke-virtual {p1, v3}, Lcom/google/firebase/crashlytics/internal/stacktrace/MiddleOutStrategy;->getTrimmedStackTrace([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object v3

    :cond_2
    return-object v3
.end method
