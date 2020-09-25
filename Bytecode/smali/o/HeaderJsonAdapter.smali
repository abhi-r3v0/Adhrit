.class public interface abstract Lo/HeaderJsonAdapter;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final onNavigationEvent:Lo/HeaderJsonAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    sget-object v0, Lo/InstrumentActionJsonAdapter;->extraCallback:Lo/InstrumentActionJsonAdapter;

    sput-object v0, Lo/HeaderJsonAdapter;->onNavigationEvent:Lo/HeaderJsonAdapter;

    return-void
.end method


# virtual methods
.method public abstract extraCallback([Lo/p$a;Ljava/util/List;[Lo/component2;[I)[I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lo/p$a;",
            "Ljava/util/List<",
            "+",
            "Lo/getMerchantId;",
            ">;[",
            "Lo/component2;",
            "[I)[I"
        }
    .end annotation
.end method
