.class public abstract Lo/reverseIteratorFrom$onRelationshipValidationResult;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/reverseIteratorFrom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "onRelationshipValidationResult"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 669
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onPostMessage(Ljava/util/Map;)Lo/reverseIteratorFrom$onPostMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lo/reverseIteratorFrom$onPostMessage;"
        }
    .end annotation
.end method
