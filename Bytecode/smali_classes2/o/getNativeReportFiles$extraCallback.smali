.class public Lo/getNativeReportFiles$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getNativeReportFiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "extraCallback"
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

.field private factory:Lo/doBackgroundInitializationAsync;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/doBackgroundInitializationAsync<",
            "TT;>;"
        }
    .end annotation
.end field

.field private instantiation:I

.field private final providedInterfaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "-TT;>;>;"
        }
    .end annotation
.end field

.field private publishedEvents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private type:I


# direct methods
.method private varargs constructor <init>(Ljava/lang/Class;[Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Class<",
            "-TT;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/getNativeReportFiles$extraCallback;->providedInterfaces:Ljava/util/Set;

    .line 223
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/getNativeReportFiles$extraCallback;->dependencies:Ljava/util/Set;

    const/4 v0, 0x0

    .line 224
    iput v0, p0, Lo/getNativeReportFiles$extraCallback;->instantiation:I

    .line 225
    iput v0, p0, Lo/getNativeReportFiles$extraCallback;->type:I

    .line 227
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lo/getNativeReportFiles$extraCallback;->publishedEvents:Ljava/util/Set;

    const-string v1, "Null interface"

    .line 231
    invoke-static {p1, v1}, Lo/component25;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 232
    iget-object v2, p0, Lo/getNativeReportFiles$extraCallback;->providedInterfaces:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 233
    array-length p1, p2

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v2, p2, v0

    .line 234
    invoke-static {v2, v1}, Lo/component25;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    :cond_0
    iget-object p1, p0, Lo/getNativeReportFiles$extraCallback;->providedInterfaces:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Class;[Ljava/lang/Class;Lo/getNativeReportFiles$3;)V
    .locals 0

    .line 221
    invoke-direct {p0, p1, p2}, Lo/getNativeReportFiles$extraCallback;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$100(Lo/getNativeReportFiles$extraCallback;)Lo/getNativeReportFiles$extraCallback;
    .locals 0

    .line 221
    invoke-direct {p0}, Lo/getNativeReportFiles$extraCallback;->intoSet()Lo/getNativeReportFiles$extraCallback;

    move-result-object p0

    return-object p0
.end method

.method private intoSet()Lo/getNativeReportFiles$extraCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getNativeReportFiles$extraCallback<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 283
    iput v0, p0, Lo/getNativeReportFiles$extraCallback;->type:I

    return-object p0
.end method

.method private setInstantiation(I)Lo/getNativeReportFiles$extraCallback;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lo/getNativeReportFiles$extraCallback<",
            "TT;>;"
        }
    .end annotation

    .line 264
    iget v0, p0, Lo/getNativeReportFiles$extraCallback;->instantiation:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Instantiation type has already been set."

    invoke-static {v0, v1}, Lo/component25;->checkState(ZLjava/lang/String;)V

    .line 266
    iput p1, p0, Lo/getNativeReportFiles$extraCallback;->instantiation:I

    return-object p0
.end method

.method private validateInterface(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lo/getNativeReportFiles$extraCallback;->providedInterfaces:Ljava/util/Set;

    .line 272
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    const-string v0, "Components are not allowed to depend on interfaces they themselves provide."

    .line 271
    invoke-static {p1, v0}, Lo/component25;->checkArgument(ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public add(Lo/CrashlyticsCore$1;)Lo/getNativeReportFiles$extraCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CrashlyticsCore$1;",
            ")",
            "Lo/getNativeReportFiles$extraCallback<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "Null dependency"

    .line 241
    invoke-static {p1, v0}, Lo/component25;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 242
    invoke-virtual {p1}, Lo/CrashlyticsCore$1;->getInterface()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/getNativeReportFiles$extraCallback;->validateInterface(Ljava/lang/Class;)V

    .line 243
    iget-object v0, p0, Lo/getNativeReportFiles$extraCallback;->dependencies:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public alwaysEager()Lo/getNativeReportFiles$extraCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getNativeReportFiles$extraCallback<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 249
    invoke-direct {p0, v0}, Lo/getNativeReportFiles$extraCallback;->setInstantiation(I)Lo/getNativeReportFiles$extraCallback;

    move-result-object v0

    return-object v0
.end method

.method public build()Lo/getNativeReportFiles;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getNativeReportFiles<",
            "TT;>;"
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lo/getNativeReportFiles$extraCallback;->factory:Lo/doBackgroundInitializationAsync;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Missing required property: factory."

    invoke-static {v0, v1}, Lo/component25;->checkState(ZLjava/lang/String;)V

    .line 290
    new-instance v0, Lo/getNativeReportFiles;

    new-instance v3, Ljava/util/HashSet;

    iget-object v1, p0, Lo/getNativeReportFiles$extraCallback;->providedInterfaces:Ljava/util/Set;

    invoke-direct {v3, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v4, Ljava/util/HashSet;

    iget-object v1, p0, Lo/getNativeReportFiles$extraCallback;->dependencies:Ljava/util/Set;

    invoke-direct {v4, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget v5, p0, Lo/getNativeReportFiles$extraCallback;->instantiation:I

    iget v6, p0, Lo/getNativeReportFiles$extraCallback;->type:I

    iget-object v7, p0, Lo/getNativeReportFiles$extraCallback;->factory:Lo/doBackgroundInitializationAsync;

    iget-object v8, p0, Lo/getNativeReportFiles$extraCallback;->publishedEvents:Ljava/util/Set;

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lo/getNativeReportFiles;-><init>(Ljava/util/Set;Ljava/util/Set;IILo/doBackgroundInitializationAsync;Ljava/util/Set;Lo/getNativeReportFiles$3;)V

    return-object v0
.end method

.method public eagerInDefaultApp()Lo/getNativeReportFiles$extraCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getNativeReportFiles$extraCallback<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 254
    invoke-direct {p0, v0}, Lo/getNativeReportFiles$extraCallback;->setInstantiation(I)Lo/getNativeReportFiles$extraCallback;

    move-result-object v0

    return-object v0
.end method

.method public factory(Lo/doBackgroundInitializationAsync;)Lo/getNativeReportFiles$extraCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/doBackgroundInitializationAsync<",
            "TT;>;)",
            "Lo/getNativeReportFiles$extraCallback<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "Null factory"

    .line 278
    invoke-static {p1, v0}, Lo/component25;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/doBackgroundInitializationAsync;

    iput-object p1, p0, Lo/getNativeReportFiles$extraCallback;->factory:Lo/doBackgroundInitializationAsync;

    return-object p0
.end method

.method public publishes(Ljava/lang/Class;)Lo/getNativeReportFiles$extraCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lo/getNativeReportFiles$extraCallback<",
            "TT;>;"
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lo/getNativeReportFiles$extraCallback;->publishedEvents:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
