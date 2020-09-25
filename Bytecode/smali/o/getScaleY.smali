.class public final Lo/getScaleY;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# static fields
.field public static final ICustomTabsCallback:Lo/setPivotX;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setPivotX<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lo/getScaleY$4;

    invoke-direct {v0}, Lo/getScaleY$4;-><init>()V

    sput-object v0, Lo/getScaleY;->ICustomTabsCallback:Lo/setPivotX;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onPostMessage(Ljava/lang/Object;)Lo/setPivotX;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lo/setPivotX<",
            "TT;>;"
        }
    .end annotation

    .line 21
    new-instance v0, Lo/getScaleY$1;

    invoke-direct {v0, p0}, Lo/getScaleY$1;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
