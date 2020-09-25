.class public interface abstract Lo/removeAllWrites;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/applyUserOverwrite;
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/removeAllWrites$ICustomTabsCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/applyUserOverwrite<",
        "TR;>;",
        "Lo/getServerTime<",
        "TR;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008f\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003:\u0001\u000cJ\r\u0010\u0008\u001a\u00028\u0000H&\u00a2\u0006\u0002\u0010\tJ\n\u0010\n\u001a\u0004\u0018\u00010\u000bH\'R\u0018\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\r"
    }
    d2 = {
        "Lkotlin/reflect/KProperty0;",
        "R",
        "Lkotlin/reflect/KProperty;",
        "Lkotlin/Function0;",
        "getter",
        "Lkotlin/reflect/KProperty0$Getter;",
        "getGetter",
        "()Lkotlin/reflect/KProperty0$Getter;",
        "get",
        "()Ljava/lang/Object;",
        "getDelegate",
        "",
        "Getter",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# virtual methods
.method public abstract asBinder()Lo/removeAllWrites$ICustomTabsCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/removeAllWrites$ICustomTabsCallback<",
            "TR;>;"
        }
    .end annotation
.end method

.method public abstract onTransact()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation
.end method
