# Import necessary packages
from sklearn import datasets
from sklearn.model_selection import train_test_split
from sklearn.linear_model import LinearRegression


def model():
    """
    Returns the 'test target values' and 'predicted values' of the diabetes dataset.
        Parameters:
            No parameter
        Returns:
            tuple: (test_y, pred)
            - test_y:  pandas.core.series.Series
            - pred: numpy.ndarray
            test target values (test_y) and predicted values (pred)
    """
    # Load Diabetes Dataset
    X, y = datasets.load_diabetes(return_X_y=True, as_frame=True)
    # Split dataset into train and test
    train_X, test_X, train_y, test_y = train_test_split(X, y, test_size=0.25, random_state=42)
    # modeling
    lr = LinearRegression()
    pred = lr.fit(train_X, train_y).predict(test_X)
    return test_y, pred


if __name__ == '__main__':
    test_y, pred = model()
    print(test_y)
    print(pred)
