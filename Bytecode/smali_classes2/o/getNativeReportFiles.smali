.class public final Lo/getNativeReportFiles;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getNativeReportFiles$extraCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final dependencies:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/CrashlyticsCore$1;",
            ">;"
        }
    .end annotation
.end field

.field private final factory:Lo/doBackgroundInitializationAsync;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/doBackgroundInitializationAsync<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final instantiation:I

.field private final providedInterfaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "-TT;>;>;"
        }
    .end annotation
.end field

.field private final publishedEvents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final type:I


# direct methods
.method private constructor <init>(Ljava/util/Set;Ljava/util/Set;IILo/doBackgroundInitializationAsync;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "-TT;>;>;",
            "Ljava/util/Set<",
            "Lo/CrashlyticsCore$1;",
            ">;II",
            "Lo/doBackgroundInitializationAsync<",
            "TT;>;",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lo/getNativeReportFiles;->providedInterfaces:Ljava/util/Set;

    .line 94
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lo/getNativeReportFiles;->dependencies:Ljava/util/Set;

    .line 95
    iput p3, p0, Lo/getNativeReportFiles;->instantiation:I

    .line 96
    iput p4, p0, Lo/getNativeReportFiles;->type:I

    .line 97
    iput-object p5, p0, Lo/getNativeReportFiles;->factory:Lo/doBackgroundInitializationAsync;

    .line 98
    invoke-static {p6}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lo/getNativeReportFiles;->publishedEvents:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Set;Ljava/util/Set;IILo/doBackgroundInitializationAsync;Ljava/util/Set;Lo/getNativeReportFiles$3;)V
    .locals 0

    .line 34
    invoke-direct/range {p0 .. p6}, Lo/getNativeReportFiles;-><init>(Ljava/util/Set;Ljava/util/Set;IILo/doBackgroundInitializationAsync;Ljava/util/Set;)V

    return-void
.end method

.method public static builder(Ljava/lang/Class;)Lo/getNativeReportFiles$extraCallback;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lo/getNativeReportFiles$extraCallback<",
            "TT;>;"
        }
    .end annotation

    .line 173
    new-instance v0, Lo/getNativeReportFiles$extraCallback;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lo/getNativeReportFiles$extraCallback;-><init>(Ljava/lang/Class;[Ljava/lang/Class;Lo/getNativeReportFiles$3;)V

    return-object v0
.end method

.method public static varargs builder(Ljava/lang/Class;[Ljava/lang/Class;)Lo/getNativeReportFiles$extraCallback;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Lo/getNativeReportFiles$extraCallback<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 180
    new-instance v0, Lo/getNativeReportFiles$extraCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lo/getNativeReportFiles$extraCallback;-><init>(Ljava/lang/Class;[Ljava/lang/Class;Lo/getNativeReportFiles$3;)V

    return-object v0
.end method

.method public static intoSet(Ljava/lang/Object;Ljava/lang/Class;)Lo/getNativeReportFiles;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lo/getNativeReportFiles<",
            "TT;>;"
        }
    .end annotation

    .line 217
    invoke-static {p1}, Lo/getNativeReportFiles;->intoSetBuilder(Ljava/lang/Class;)Lo/getNativeReportFiles$extraCallback;

    move-result-object p1

    invoke-static {p0}, Lo/finishInitSynchronously;->lambdaFactory$(Ljava/lang/Object;)Lo/doBackgroundInitializationAsync;

    move-result-object p0

    invoke-virtual {p1, p0}, Lo/getNativeReportFiles$extraCallback;->factory(Lo/doBackgroundInitializationAsync;)Lo/getNativeReportFiles$extraCallback;

    move-result-object p0

    invoke-virtual {p0}, Lo/getNativeReportFiles$extraCallback;->build()Lo/getNativeReportFiles;

    move-result-object p0

    return-object p0
.end method

.method public static intoSetBuilder(Ljava/lang/Class;)Lo/getNativeReportFiles$extraCallback;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lo/getNativeReportFiles$extraCallback<",
            "TT;>;"
        }
    .end annotation

    .line 207
    invoke-static {p0}, Lo/getNativeReportFiles;->builder(Ljava/lang/Class;)Lo/getNativeReportFiles$extraCallback;

    move-result-object p0

    invoke-static {p0}, Lo/getNativeReportFiles$extraCallback;->access$100(Lo/getNativeReportFiles$extraCallback;)Lo/getNativeReportFiles$extraCallback;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$intoSet$2(Ljava/lang/Object;Lo/logException;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method static synthetic lambda$of$0(Ljava/lang/Object;Lo/logException;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method static synthetic lambda$of$1(Ljava/lang/Object;Lo/logException;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public static of(Ljava/lang/Class;Ljava/lang/Object;)Lo/getNativeReportFiles;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)",
            "Lo/getNativeReportFiles<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 190
    invoke-static {p0}, Lo/getNativeReportFiles;->builder(Ljava/lang/Class;)Lo/getNativeReportFiles$extraCallback;

    move-result-object p0

    invoke-static {p1}, Lo/CrashlyticsController$ReportUploaderHandlingExceptionCheck;->lambdaFactory$(Ljava/lang/Object;)Lo/doBackgroundInitializationAsync;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/getNativeReportFiles$extraCallback;->factory(Lo/doBackgroundInitializationAsync;)Lo/getNativeReportFiles$extraCallback;

    move-result-object p0

    invoke-virtual {p0}, Lo/getNativeReportFiles$extraCallback;->build()Lo/getNativeReportFiles;

    move-result-object p0

    return-object p0
.end method

.method public static varargs of(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lo/getNativeReportFiles;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Lo/getNativeReportFiles<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 197
    invoke-static {p1, p2}, Lo/getNativeReportFiles;->builder(Ljava/lang/Class;[Ljava/lang/Class;)Lo/getNativeReportFiles$extraCallback;

    move-result-object p1

    invoke-static {p0}, Lo/getCompleteSessionFiles;->lambdaFactory$(Ljava/lang/Object;)Lo/doBackgroundInitializationAsync;

    move-result-object p0

    invoke-virtual {p1, p0}, Lo/getNativeReportFiles$extraCallback;->factory(Lo/doBackgroundInitializationAsync;)Lo/getNativeReportFiles$extraCallback;

    move-result-object p0

    invoke-virtual {p0}, Lo/getNativeReportFiles$extraCallback;->build()Lo/getNativeReportFiles;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getDependencies()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lo/CrashlyticsCore$1;",
            ">;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lo/getNativeReportFiles;->dependencies:Ljava/util/Set;

    return-object v0
.end method

.method public final getFactory()Lo/doBackgroundInitializationAsync;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/doBackgroundInitializationAsync<",
            "TT;>;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lo/getNativeReportFiles;->factory:Lo/doBackgroundInitializationAsync;

    return-object v0
.end method

.method public final getProvidedInterfaces()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "-TT;>;>;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lo/getNativeReportFiles;->providedInterfaces:Ljava/util/Set;

    return-object v0
.end method

.method public final getPublishedEvents()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lo/getNativeReportFiles;->publishedEvents:Ljava/util/Set;

    return-object v0
.end method

.method public final isAlwaysEager()Z
    .locals 2

    .line 139
    iget v0, p0, Lo/getNativeReportFiles;->instantiation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isEagerInDefaultApp()Z
    .locals 2

    .line 148
    iget v0, p0, Lo/getNativeReportFiles;->instantiation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isLazy()Z
    .locals 1

    .line 130
    iget v0, p0, Lo/getNativeReportFiles;->instantiation:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isValue()Z
    .locals 1

    .line 153
    iget v0, p0, Lo/getNativeReportFiles;->type:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Component<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/getNativeReportFiles;->providedInterfaces:Ljava/util/Set;

    .line 160
    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">{"

    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/getNativeReportFiles;->instantiation:I

    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/getNativeReportFiles;->type:I

    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", deps="

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/getNativeReportFiles;->dependencies:Ljava/util/Set;

    .line 166
    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
