.class public final Lo/removeTags$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Iterable;
.implements Lo/isCacheableHost;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/removeTags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;",
        "Lo/isCacheableHost;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0010\u001c\n\u0000\n\u0002\u0010(\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u000f\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0003H\u0096\u0002\u00a8\u0006\u0004\u00b8\u0006\u0000"
    }
    d2 = {
        "kotlin/collections/CollectionsKt__IterablesKt$Iterable$1",
        "",
        "iterator",
        "",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/applyTaggedRangeMerges;


# direct methods
.method public constructor <init>(Lo/applyTaggedRangeMerges;)V
    .locals 0

    iput-object p1, p0, Lo/removeTags$onNavigationEvent;->onPostMessage:Lo/applyTaggedRangeMerges;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lo/removeTags$onNavigationEvent;->onPostMessage:Lo/applyTaggedRangeMerges;

    invoke-interface {v0}, Lo/applyTaggedRangeMerges;->ICustomTabsCallback()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
