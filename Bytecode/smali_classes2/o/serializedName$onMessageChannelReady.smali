.class public final Lo/serializedName$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/serializedName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private extraCallback:Lo/isFiltered;

.field public final onMessageChannelReady:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/serializedName$ICustomTabsCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Lo/matches;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 289
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/serializedName$onMessageChannelReady;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    sget-object v0, Lo/serializedName;->ICustomTabsCallback:Lo/isFiltered;

    iput-object v0, p0, Lo/serializedName$onMessageChannelReady;->extraCallback:Lo/isFiltered;

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/serializedName$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    .line 293
    invoke-static {p1}, Lo/matches;->onMessageChannelReady(Ljava/lang/String;)Lo/matches;

    move-result-object p1

    iput-object p1, p0, Lo/serializedName$onMessageChannelReady;->onNavigationEvent:Lo/matches;

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/isFiltered;)Lo/serializedName$onMessageChannelReady;
    .locals 2

    if-eqz p1, :cond_1

    .line 1117
    iget-object v0, p1, Lo/isFiltered;->onMessageChannelReady:Ljava/lang/String;

    const-string v1, "multipart"

    .line 304
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    iput-object p1, p0, Lo/serializedName$onMessageChannelReady;->extraCallback:Lo/isFiltered;

    return-object p0

    .line 305
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "multipart != "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "type == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onNavigationEvent()Lo/serializedName;
    .locals 4

    .line 340
    iget-object v0, p0, Lo/serializedName$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 343
    new-instance v0, Lo/serializedName;

    iget-object v1, p0, Lo/serializedName$onMessageChannelReady;->onNavigationEvent:Lo/matches;

    iget-object v2, p0, Lo/serializedName$onMessageChannelReady;->extraCallback:Lo/isFiltered;

    iget-object v3, p0, Lo/serializedName$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lo/serializedName;-><init>(Lo/matches;Lo/isFiltered;Ljava/util/List;)V

    return-object v0

    .line 341
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Multipart body must have at least one part."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
