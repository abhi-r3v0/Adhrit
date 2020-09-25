.class final Lo/populateSessionData$1$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/populateSessionData$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lo/populateSessionData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lo/populateSessionData$1;


# direct methods
.method constructor <init>(Lo/populateSessionData$1;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lo/populateSessionData$1$2;->this$1:Lo/populateSessionData$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 109
    invoke-virtual {p0}, Lo/populateSessionData$1$2;->next()Lo/populateSessionData;

    move-result-object v0

    return-object v0
.end method

.method public final next()Lo/populateSessionData;
    .locals 1

    .line 118
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 2

    .line 123
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove called on immutable collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
