.class public abstract Lo/ContentFetcher$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ContentFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "extraCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract extraCallback(Ljava/lang/Iterable;)Lo/ContentFetcher$extraCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lo/Foreground$4$4;",
            ">;)",
            "Lo/ContentFetcher$extraCallback;"
        }
    .end annotation
.end method

.method public abstract extraCallback([B)Lo/ContentFetcher$extraCallback;
.end method

.method public abstract onPostMessage()Lo/ContentFetcher;
.end method
