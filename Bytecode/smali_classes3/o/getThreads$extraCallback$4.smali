.class final Lo/getThreads$extraCallback$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getThreads$extraCallback;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lo/AutoValue_CrashlyticsReport_Session_User$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lo/getThreads$extraCallback;

.field final synthetic val$iterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lo/getThreads$extraCallback;Ljava/util/Iterator;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lo/getThreads$extraCallback$4;->this$1:Lo/getThreads$extraCallback;

    iput-object p2, p0, Lo/getThreads$extraCallback$4;->val$iterator:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .line 148
    iget-object v0, p0, Lo/getThreads$extraCallback$4;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 145
    invoke-virtual {p0}, Lo/getThreads$extraCallback$4;->next()Lo/AutoValue_CrashlyticsReport_Session_User$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final next()Lo/AutoValue_CrashlyticsReport_Session_User$Builder;
    .locals 1

    .line 153
    iget-object v0, p0, Lo/getThreads$extraCallback$4;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;

    return-object v0
.end method
