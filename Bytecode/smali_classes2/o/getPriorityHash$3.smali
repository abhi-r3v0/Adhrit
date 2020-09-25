.class final Lo/getPriorityHash$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getQueryDefinition;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getPriorityHash;->onPostMessage(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lo/NodeFromJSON;)Lo/getQueryDefinition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getQueryDefinition<",
        "Ljava/lang/Object;",
        "Lo/fromQueryDefinition<",
        "*>;>;"
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lo/getPriorityHash$3;->onMessageChannelReady:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic extraCallback(Lo/fromQueryDefinition;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method public final extraCallback()Ljava/lang/reflect/Type;
    .locals 1

    .line 38
    iget-object v0, p0, Lo/getPriorityHash$3;->onMessageChannelReady:Ljava/lang/reflect/Type;

    return-object v0
.end method
