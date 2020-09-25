.class final Lo/InstrumentActionJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lo/HeaderJsonAdapter;


# static fields
.field public static final extraCallback:Lo/InstrumentActionJsonAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/InstrumentActionJsonAdapter;

    invoke-direct {v0}, Lo/InstrumentActionJsonAdapter;-><init>()V

    sput-object v0, Lo/InstrumentActionJsonAdapter;->extraCallback:Lo/InstrumentActionJsonAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback([Lo/p$a;Ljava/util/List;[Lo/component2;[I)[I
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lo/InstrumentData;->onPostMessage([Lo/p$a;Ljava/util/List;[Lo/component2;[I)[I

    move-result-object p1

    return-object p1
.end method
