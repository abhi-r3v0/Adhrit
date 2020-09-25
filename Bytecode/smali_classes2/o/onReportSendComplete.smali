.class public interface abstract Lo/onReportSendComplete;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final TRUE:Lo/onReportSendComplete;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onReportSendComplete<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lo/onReportSendComplete$4;

    invoke-direct {v0}, Lo/onReportSendComplete$4;-><init>()V

    sput-object v0, Lo/onReportSendComplete;->TRUE:Lo/onReportSendComplete;

    return-void
.end method


# virtual methods
.method public abstract evaluate(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method
